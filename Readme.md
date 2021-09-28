## Dokcer Image to run Screaming Frog

With this docker image you can run screaming frog in less than a minute

First of all you have to install Docker and Git in your VM, VPS or whatever you are using

## Clone this repository

    git clone https://github.com/Manu200476/docker-image-sf.git

## Necessary config file

In the repo that you have clone, you have some configuration files

The first one is the spider.config, here you can configure screaming frog, I have made a base one where you can configure Ahrefs, Moz..

Also, you have a file called .screamingfrogseospider, here you can configure the RAM that SF will consume

Finally, you have to create a file called license.txt, in the first line you have to write the username of your SF account, and in the second one the key of your license

## Build the Image

After configure all the thing that I have told you you have to build the image

    docker build -t name-you-want .

## Run a crawl

    docker run image-id --crawl nike.com --headless