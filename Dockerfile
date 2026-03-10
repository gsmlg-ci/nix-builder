FROM nixos/nix

LABEL org.opencontainers.image.source="https://github.com/gsmlg-ci/nix-builder"
COPY ./nix.conf /etc/nix/nix.conf

RUN nix-channel --update

VOLUME /nix
