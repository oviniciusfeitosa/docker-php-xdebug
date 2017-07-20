# Docker-php-xdebug

### About 

Repo used to help you to create your own image using Dockerfile, docker-compose and entrypoint,
to make your application works with xDebug PHP Module.

### How to use

Basically you need:
- rename the file ```docker-compose.yml_sample``` to ```docker-compose.yml```
- Adjust the settings of the file ```docker-compose.yml``` if necessary
- Build the image

After doing the above steps, simply execute the command below to build your image and create the container of your application.

```
docker-compose up
```

or if you don't wanna watch your containers set ```-d``` at end. Like this:

```
docker-compose up -d
```
