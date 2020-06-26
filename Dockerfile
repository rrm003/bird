FROM debian
COPY birdpedia /birdpedia
RUN useradd birdpedia
USER birdpedia
ENV LISTEN_URL=0.0.0.0:8090
EXPOSE 8090
CMD ["echo pwd"]
CMD ["/birdpedia"]
