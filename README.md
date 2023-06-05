# pandoc-plantuml-emoji

Docker image to generate a PDF from a markdown file containing Plantuml and Emojis.

- Based on the official Pandoc image that contains eisvogel latex template to convert MD files to PDF : [pandoc/extra:latest-ubuntu](https://hub.docker.com/r/pandoc/extra)
- Emoji Filter : latex-emoji.lua from https://github.com/zr-tex8r with [Twemoji Font ](https://github.com/mozilla/twemoji-colr)
  - In order to use Emoji insert shortcode version in your markdown (i.e:  :warning: ). A good Emoji Reference : [Emojipedia](https://emojipedia.org)
- [Plantuml filter](https://github.com/timofurrer/pandoc-plantuml-filter)

Test command line with documents in `samples` directory :

```shell
docker run --rm -v `pwd`:/data -w /data hayaofr/pandoc-plantuml-emoji:latest -s --template samples/eisvogel.latex -o samples/sample.pdf -V lang=fr-FR --highlight-style tango --citeproc --filter pandoc-plantuml -f markdown+rebase_relative_paths+emoji -L samples/latex-emoji.lua --pdf-engine=lualatex
```

