# rust_dev

## Rust

```docker
services:
  app:
    build:
      context: .
      dockerfile: dockerfile
    ports:
      - "7878:7878"
    deploy:
      resources:
        limits:
          cpus: '0.5'
          memory: 2G

```
