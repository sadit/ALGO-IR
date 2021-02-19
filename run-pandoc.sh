pandoc -c pandoc.css -i index.md  -o index.html -s

for index in U?/index.md
do
    html=$(dirname $index)/index.html
    pandoc -c pandoc.css -i $index  -o $html -s
done