# Debian Apache PHP 5.3
[![](https://badge.imagelayers.io/enmobile/apache:php53.svg)](https://imagelayers.io/?images=enmobile/apache:php53 'Get your own badge on imagelayers.io')

This repository contains the Dockerfile and support files to create an [Apache Http Server](http://httpd.apache.org/) / [PHP 5.3](http://php.net/releases/5_3_0.php) instance based on [Debian Wheezy](https://wiki.debian.org/DebianWheezy).

## Base Docker Image
debian:wheezy

## Installation

Install Docker.

Download automated build from public Docker Hub Registry: 
>docker pull enmobile/apache:php53

Alternatively, you can build an image directly from this repository: 
>docker build -t="enmobile/apache:php53" github.com/EnMobile/docker-apache-php53

##U sage

>docker run -d -p 80:80 enmobile/apache:php53

## Customization

>docker run -d -p 80:80 -v \<path-to/local-web-root\>:/var/www enmobile/apache:php53

where \<path-to/local-web-root\> is an absolute path of a directory containing php and static sources.

Mac boot2docker users will want to place the path to local web root under the automacially shared Users folder and should consider using something like:

>-v $(pwd)/webroot:/var/www

After few seconds, open http://\<host\> to see your web content.  If started with the -v option, web pages will be automatically updated as they are edited.
