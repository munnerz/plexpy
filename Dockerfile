FROM debian

RUN apt-get update && \
    apt-get install -y python ca-certificates git git-core && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD . /plexpy

WORKDIR "/plexpy"

ENTRYPOINT ["python", "PlexPy.py"]
