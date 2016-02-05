## Dockerfile: Debian - PHP7-FPM

[![Build Status](https://travis-ci.org/ericmdev/php7-fpm.dockerfile.svg?branch=master)](https://travis-ci.org/ericmdev/php7-fpm.dockerfile)

**Dockerfile** of [Debian](https://www.debian.org/) [PHP7-FPM](http://php.net/manual/en/book.fpm.php):

- php7.0-fpm

*Requirements*
- [Docker](https://www.docker.com/) 

*Base Docker Image*
- [ericmdev/php7](https://hub.docker.com/r/ericmdev/php7/)

*Docker Pull Command*
- `docker pull ericmdev/php7-fpm`

### Usage

Build the image.

    $ make

Run the container.

    $ make run

Dig into the container.

    $ make exec

*See the `Makefile` for more options.