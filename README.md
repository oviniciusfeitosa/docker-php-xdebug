# Docker + PHP + XDebug

### About 

Repo used to help you to create your own image using Dockerfile, docker-compose and entrypoint,
to make your application works with xDebug PHP Module.

### How to use

Basically you need:

- Create a new `docker-compose.yml` file using `docker-compose.yml_sample` as reference.

```
cp docker-compose.yml_sample docker-compose.yml
```

- (optional) Adjust the settings of the file `docker-compose.yml` if necessary
After doing the above steps, simply execute the command below to build your image and create the container of your application.

```
docker-compose up
```

## :handshake: Contributing

* If you notice something is wrong, [open an issue in GitHub](https://github.com/vinnyfs89/docker-php-xdebug/issues).

* You can fix it yourself by simply [edit the file in GitHub](https://github.com/blog/905-edit-like-an-ace) and open a new pull request. The repository will be updated as soon as your pull request is accepted!

:octocat: :smiley: :zap:

## :registered: Referências
- [PHP-DF](https://phpdf.org.br)
- [Commit Messages Convention (CMC)](https://github.com/devbrotherhood/cmc)
