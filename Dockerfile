FROM debian:bullseye-slim

WORKDIR /app/
COPY . /app/

CMD ["cat", "./word"]