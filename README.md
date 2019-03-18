# deploy-dockerhub

## Usage with circle-ci
```yaml
version: 2
jobs:
    deploy:
        docker:
             - image: xmorse/deploy-dockerhub
        environment:
             USERNAME: $DOCKERHUB_USERNAME
             PASSWORD: $DOCKERHUB_PASSWORD
             IMAGE_NAME: myimage
        steps:
             - setup_remote_docker
             - checkout
             - run: /deploy
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

