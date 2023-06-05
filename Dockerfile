FROM pandoc/extra:latest-ubuntu

RUN apt-get -q --no-allow-insecure-repositories update \
  && apt-get install --assume-yes --no-install-recommends \
        plantuml graphviz

RUN pip3 --no-cache-dir install pandoc-plantuml-filter

COPY Twemoji.Mozilla.ttf /usr/local/share/fonts/