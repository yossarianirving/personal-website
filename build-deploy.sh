#!/bin/sh

hugo
rsync -r public/ root@192.168.99.12:/var/www/html/chris/