./pandoc index.md -c pandoc.css -s --katex  -o index.html

for index in U?/index.md
do
    d=$(dirname $index)
    cd $d
    ../pandoc index.md -c ../pandoc.css -s --katex -o index.html
    cd ..
done