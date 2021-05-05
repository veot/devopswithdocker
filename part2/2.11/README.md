# 2.11

I use Pandoc to convert my markdown files to pdfs. Pandoc has a lot of dependencies which I might not need otherwise. Luckily Pandoc has a pre-configured Docker image that can be used instead. Here is how I've used it inside of a simple bash script.


```bash
#!/usr/bin/env bash

IN_FILE="$1"
OUT_FILE="${IN_FILE%.*}.pdf"

docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex $IN_FILE \
    --pdf-engine=xelatex \
    -o $OUT_FILE
```
