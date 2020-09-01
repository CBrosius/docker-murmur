## Description

This is my personal fork of the docker-container for a Mumble-Server (murmur) based on https://github.com/Zalkeen/docker-murmur
I had a few issues with the original one as I got a exec-error when just pulling zalkeen\murmur instead of zalkeen\murmur_1.3.0-armhf and
the sqlite-db was not build automatically when I tried out this image.

So my fork tries to fix this for my personal use, but maybe is usable for others, too.



This is a barebones Docker container built using Alpine.

It's configured to be able to run it without further settings for easy testing.

## Usage

The recommended way to run this container is as follows:

```bash
$ docker run -d -p 64738:64738 -p 64738:64738/udp cbrosius/murmur
```

To have the container store the sqlite database on your filesystem instead, you can run:

```bash
$ docker run -d -p 64738:64738 -p 64738:64738/udp \
    -v /path/to/data:/data cbrosius/murmur
```

## Important notes

### Getting the super-user password

On first run, if you don't already have an existing state database, you'll want to look at the logs for your container to get the super-user password:

```bash
$ docker logs murmur 2>&1 | grep Password
```

## Changelog

2020/09/01 - Update Sources
