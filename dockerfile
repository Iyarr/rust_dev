FROM rust:latest

COPY ./ /usr/rust

WORKDIR /usr/rust

RUN cargo install --path . && \
    cargo install cargo-watch

#cargo watch -x run
#CMD [ "cargo","run" ]
CMD ["cargo", "watch", "-x", "run"]

