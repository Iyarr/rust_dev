# Run container

if [ "$1" = "compose" ]; then
    docker compose up -d --build --no-cache
    docker compose exec -it rust-app bash
else
  docker build --no-cache -t rust-app .
  docker run -it --rm -d -p 7878:7878 --name rust-app rust-app
fi

exit 0