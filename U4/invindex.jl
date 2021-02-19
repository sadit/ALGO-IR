using JSON
using Unicode


"""
Lee los tweets desde un archivo codificado con un JSON por linea
"""
function load_tweets(filename)
    L = Dict{String,Any}[]
    open(filename) do f
        for line in eachline(f)
            push!(L, JSON.parse(line))
        end
    end
    
    L
end


const TERM_RE = r"[a-zñáéíóúü#@_]+"sm
const URL_RE = r"https\S+"sm

const STOPWORDS = Set([
    "de", "la", "el", "a", "y", "en", "que","con", "los", "se", "del", "para", "no", "por", "las", "su", "un", "al", "es",
    "lo", "como", "una", "mas", "le", "si", "ya","esta", "pero", "sobre", "pais",  "entre", "sus", "asi", "tras", "este",
    "sera", "fue", "via", "son", "dice", "ser", "me", "nuevo", "o", "tiene", "sin", "te", "todos", "todo", "ha", "nos", 
    "ahora", "solo", "desde", "les", "hay", "quien", "ni", "mi", "tambien", "hasta", "contra", "porque", "muy", "eso", "habra", "yo",
    "cuando", "bien", "donde", "esto", "pide", "debe", "estos", "vamos", "ante", "e",  "tu", "hace", "hacer", 
    "despues", "nada", "quienes", "antes", "mejor", "parte", "ver"])

"""
Borra acentos
"""
function remove_accute(text)
    L = Char[]
    for u in Unicode.normalize(text, :NFD)
        o = Int(u)
        if 0x300 <= o && o <= 0x036F
            continue
        end
        
        push!(L, u)
    end
    
    join(L)
end


"""
Crea una bolsa de palabras de un texto
"""
function create_bow(text)
    b = Dict{String, Int}()
    text = replace(lowercase(text), URL_RE => "")

    for m in eachmatch(TERM_RE, text)
        term = m.match
        if term in STOPWORDS
            continue
        end
        
        term = remove_accute(term)
        # term = m.match
        c = get(b, term, 0)
        b[term] = c + 1
    end
    
    b
end


"""
Crea un indice invertido a partir de una colección de diccionarios
"""
function create_inverted_index(tweets)
    invindex = Dict{String,Vector{Int}}()

    for (tweetID, tweet) in enumerate(tweets)
        bow = create_bow(tweet["text"])
 
        for (term, freq) in bow
            # se ignora la frecuencia por ahora
            posting_list = get(invindex, term, nothing)
            if posting_list == nothing
                invindex[term] = [tweetID]
            else
                push!(posting_list::Vector{Int}, tweetID)
            end
        end
            
    end
        
    invindex
end

