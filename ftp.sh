#!/bin/bash

docker run -d -v /nocsys:/home/vsftpd \
  -p 20:20 -p 21:21 -p 47400-47470:47400-47470 \
  -e FTP_USER=nocsys \
  -e FTP_PASS=Nocsys1234 \
  -e PASV_ADDRESS=140.113.61.111 \
  --name ftp \
  --restart=always bogem/ftp

