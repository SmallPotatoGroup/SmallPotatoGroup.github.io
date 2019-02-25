#! /bin/bash
target=$1
if [ ! -z $target ]
then
echo $target
else
exit 1
fi

# 生成 HTML 文档
# pandoc -f markdown -t html5 -c ../assets/github.css -s assets/github.html5 -o doc/$target.html  ./doc-src/$target.md
pandoc -f markdown -t html --css assets/pandoc.css -o doc/$target.html  ./doc-src/$target.md