# deploy-dockerhub

## Usage with circle-ci
```yaml
version: 2
jobs:
    deploy:
        docker:
           - image: xmorse/deploy-dockerhub
        environment:
             IMAGE_NAME: myimage
        steps:
             - setup_remote_docker
             - checkout
             - run: USERNAME=$DOCKERHUB_USERNAME PASSWORD=$DOCKERHUB_PASSWORD /deploy
```

## Usage with docker-compose
```yaml
services:
    deploy:
        image: xmorse/deploy-dockerhub
        command: sh -c "cd /src && /deploy"
        environment:
             USERNAME: xxx
             PASSWORD: xxx
             IMAGE_NAME: myimage
        volumes:
             ./:/src
```

