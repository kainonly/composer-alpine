# Composer-Alpine

Composer minimalist custom image

Docker Pull Command

```shell
docker pull kainonly/composer-alpine
```

pass the --ignore-platform-reqs and / or --no-scripts flags to install or update:

```shell
docker run --rm --interactive --tty \
 --volume $PWD:/app \
 composer install --ignore-platform-reqs --no-scripts
```
