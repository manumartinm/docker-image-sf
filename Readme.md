## Dokcer Image to run Screaming Frog

With this docker image you can run screaming frog in less than a minute

## Create necesary configuration files

Create a license.txt files and a spider.config file, if you want you can copy the one that I have created

In the license.txt, you will have to copy your license username in the first line, and the license key in the second one

## Download Docker Image from Dockerhub

    docker pull manudev2004/screaming-frog

Now you are ready to run your first crawl, for example:

    docker run -t manudev200476/screaming-frog -e "crawl_folder=/home/sf/crawls" --crawl nike.com --headless