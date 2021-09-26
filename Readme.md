## Dokcer Image to run Screaming Frog

With this docker image you can run screaming frog in lles than a minute

## Create necesary configuration files

Create a license.txt files and a spider.config file, if you want you can copy the one that I have created

In the license.txt, you will have to copy your license username in the first line, and the license key in the second one

## Download Docker Image from Dockerhub

    docker run manudev2004/screaming-frog --build-arg crawl_folder="/home/crawls"

Now you are ready to run your first crawl, for example:

    sf --crawl nike.com --headless --save-crawl --output-folder /home/crawls --timestamped-output --export-format csv