FROM phusion/baseimage:master

ENV crawl_folder=/home/crawls

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

RUN mkdir ${crawl_folder}

RUN echo 'alias sf="screamingfrog"' >> ~/.bashrc

ENTRYPOINT ["/usr/bin/screamingfrogseospider"]

CMD ["--help"]