FROM docker 

COPY ./deploy /deploy

RUN chmod +x /deploy
