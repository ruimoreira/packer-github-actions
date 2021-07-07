# see https://hub.docker.com/r/hashicorp/packer/tags for all available tags
FROM google/cloud-sdk:latest
RUN ln -s /usr/bin/gcloud /usr/local/bin/gcloud
FROM hashicorp/packer:light@sha256:173008fe1d4cfada9a5fe7e641128ca87dd1e595534afc9abd3b2683b1491fd4
COPY "entrypoint.sh" "/entrypoint.sh"
ENV PATH="/usr/local/bin:${PATH}"
ENTRYPOINT ["/entrypoint.sh"]
