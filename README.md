# Composer Alpine

The source is the composer Image of packagist.laravel-china.org

![MicroBadger Size](https://img.shields.io/microbadger/image-size/kainonly/composer-alpine.svg?style=flat-square)
![MicroBadger Layers](https://img.shields.io/microbadger/layers/kainonly/composer-alpine.svg?style=flat-square)
![Docker Pulls](https://img.shields.io/docker/pulls/kainonly/composer-alpine.svg?style=flat-square)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/kainonly/composer-alpine.svg?style=flat-square)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/kainonly/composer-alpine.svg?style=flat-square)

```shell
docker pull kainonly/composer-alpine
```

pass the --ignore-platform-reqs and / or --no-scripts flags to install or update:

```shell
docker run --rm --interactive --tty \
 --volume $PWD:/app \
 composer install --ignore-platform-reqs --no-scripts
```

Set docker-compose

```yaml
version: '3.7'
services:
  it:
    image: kainonly/composer-alpine
    volumes:
      - ./:/app
  init:
    image: kainonly/composer-alpine
    command: 'composer install --ignore-platform-reqs --no-scripts'
    volumes:
      - ./:/app
  ops:
    image: kainonly/composer-alpine
    command: 'composer dump-autoload --optimize'
    volumes:
      - ./:/app
```
