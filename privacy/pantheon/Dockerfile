#default version to latest
ARG PANTHEON_VERSION=develop

FROM pegasyseng/pantheon:$PANTHEON_VERSION

# Copy new entrypoint scripts
COPY *_start.sh /opt/pantheon/

# Copy Orion public keys
COPY orion/* /orion/

# Install a dos 2 unix EOL converter
RUN apt-get -qq update && \
    apt-get -qq -y install dos2unix

# Run dos2unix EOL conversion on all shell scripts to prevent scripts to fail if edited with a windows IDE
# that rewrote the EOL to CRLF before we build the image. See issue #4
RUN find /opt/pantheon/*.sh -type f -print0 | xargs -0 dos2unix

EXPOSE 8545 8546
# specify default entrypoint to start the node
ENTRYPOINT ["/opt/pantheon/node_start.sh"]