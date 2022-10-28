FROM debian:bullseye-slim

WORKDIR /app/
COPY ./word /app/

CMD ["cat", "./word"]