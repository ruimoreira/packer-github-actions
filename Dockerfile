# see https://hub.docker.com/r/hashicorp/packer/tags for all available tags
FROM google/cloud-sdk:latest
FROM hashicorp/packer:full@sha256:53b36c3fc25dc7e0e5f87cff61a1bffea78feab36dcec82a7f4a1cb54d35273b
RUN ln -s /usr/bin/gcloud /usr/local/bin/gcloud
COPY "entrypoint.sh" "/entrypoint.sh"
ENV PATH="/usr/local/bin:${PATH}"
ENTRYPOINT ["/entrypoint.sh"]
