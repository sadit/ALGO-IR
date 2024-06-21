module MySorting

using Base.Order
using Base.Sort

struct HeapSort <: Algorithm end
struct BubbleSort <: Algorithm end

export HeapSort, BubbleSort

#=
    MaxHeap definition
=#

@inline heapparent(node::Int)::Int = node ÷ 2
@inline heapleft(node::Int)::Int = 2node
@inline heapright(node::Int)::Int = 2node + 1

@inline function percolate_up!(A::AbstractVector, node::Int, o::Ordering)
    @inbounds data = A[node]
    @inbounds while (p = heapparent(node)) >= 1
        if lt(o, A[p], data)
            A[node] = A[p]
            node = p
        else
            break
        end
    end

    @inbounds A[node] = data
end

function percolate_down!(A::AbstractVector, node::Int, data, o::Ordering, n::Int)
    @inbounds while (left = heapleft(node)) <= n
        right = heapright(node)
        child = if right > n
            left
        else
            lt(o, A[right], A[left]) ? left : right
        end

        if lt(o, data, A[child])
            A[node] = A[child]
            node = child
        else
            break
        end
    end

    @inbounds A[node] = data
end

function heapify!(A::AbstractVector, o::Ordering=Forward, n::Int=length(A))
    @inbounds for i in heapparent(n):-1:1
        percolate_down!(A, i, A[i], o, n)
    end

    A
end

@inline swap!(A::AbstractVector, i::Int, j::Int) = @inbounds begin
    tmp = A[i]
    A[i] = A[j]
    A[j] = tmp
end

#=
    Heap sort
=#
function heapsort!(A::AbstractVector, o::Ordering=Forward)
    n = length(A)
    heapify!(A, o, n)
    
    @inbounds for i in n:-1:2
        x = A[i]
        A[i] = A[1]
        percolate_down!(A, 1, x, o, i-1)
    end

    A
end


#======
Bubble sort
=======#
function bubblesort!(A::AbstractVector, lo::Int, hi::Int, o::Ordering)
    swaps = 1
    
    @inbounds while swaps > 0
        swaps = 0
        for i in lo+1:hi
            if lt(o, A[i], A[i-1])
                swap!(A, i, i-1)
                swaps += 1
            end
        end
    end

    A
end

#==
Standard interfaces
==#

Base.sort!(A::AbstractVector, ::BubbleSort, o::Ordering=Forward) = bubblesort!(A, 1, length(A), o)
Base.sort(A::AbstractVector, ::BubbleSort, o::Ordering=Forward) = bubblesort!(copy(A), 1, length(A), o)
Base.sort!(A::AbstractVector, ::HeapSort, o::Ordering=Forward) = heapsort!(A, o)
Base.sort(A::AbstractVector, ::HeapSort, o::Ordering=Forward) = heapsort!(copy(A), o)

end
