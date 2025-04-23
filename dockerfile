FROM rust:latest

COPY . /workspace

WORKDIR /workspace

RUN cargo install --path .

#cargo watch -x run
CMD [ "cargo","run" ]
#CMD ["cargo", "watch", "-x", "run"]

