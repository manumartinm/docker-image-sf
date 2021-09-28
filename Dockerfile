FROM phusion/baseimage:master

RUN apt-get update && apt-get install -y \
    wget \
    xdg-utils \
    zenity \
    ttf-mscorefonts-installer \
    fonts-wqy-zenhei \
    libgconf-2-4

RUN wget --no-verbose https://download.screamingfrog.co.uk/products/seo-spider/screamingfrogseospider_16.0_all.deb && \
    dpkg -i /screamingfrogseospider_16.0_all.deb && \
    apt-get install -f -y

COPY license.txt /root/.ScreamingFrogSEOSpider/licence.txt

COPY spider.config /root/.ScreamingFrogSEOSpider/spider.config

COPY .screamingfrogseospider ~/.screamingfrogseospider

RUN mkdir /home/crawls

ENTRYPOINT ["/usr/bin/screamingfrogseospider"]

CMD ["--help"]