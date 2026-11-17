#!/bin/bash
docker build -t my-nginx-lab .
docker rm -f my-nginx-container 2>/dev/null
docker run -d --name my-nginx-container -p 54321:80 my-nginx-lab
echo "Готово. Проверь: curl http://127.0.0.1:54321"
