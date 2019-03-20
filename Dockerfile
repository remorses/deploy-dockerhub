FROM docker:git-stable

COPY ./deploy /deploy

RUN chmod +x /deploy
