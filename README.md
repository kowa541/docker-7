# docker-7
# Лабораторная работа П07: Docker basics — практика

## Цель работы
Создать Docker-образ с веб-сервером Nginx, отдающим статическую HTML-страницу, и запустить контейнер с пробросом порта 54321 для доступа снаружи. Команда запуска оформлена шелл-скриптом.

## Структура проекта
- `Dockerfile` — инструкция сборки образа на базе `nginx:latest` с копированием `index.html` в директорию веб-сервера.
- `index.html` — статическая приветственная страница.
- `run.sh` — bash-скрипт автоматической сборки образа и запуска контейнера.

## Логика работы
1. **Dockerfile** берёт базовый образ Nginx и подменяет дефолтную страницу на нашу `index.html`.
2. **run.sh** выполняет:
   - `docker build -t my-nginx-lab .` — сборка образа;
   - `docker rm -f my-nginx-container` — очистка после предыдущих запусков;
   - `docker run -d --name my-nginx-container -p 54321:80 my-nginx-lab` — запуск контейнера в фоне с пробросом хост-порта **54321** на контейнерный порт **80**.

## Проверка результата
docker ps — контейнер my-nginx-container в статусе Up, порты 0.0.0.0:54321->80/tcp.
curl http://127.0.0.1:54321 — возвращает HTML с текстом "Hello from Docker Nginx!".

## Результаты
Docker-образ успешно собран, контейнер запущен и отдаёт статическую страницу по проброшенному порту 54321.

<img width="1009" height="696" alt="image" src="https://github.com/user-attachments/assets/2de6ae95-3bb6-4bc8-939b-d623497dbed0" /> 

<img width="1043" height="578" alt="image" src="https://github.com/user-attachments/assets/162a1f28-e298-4063-a66b-55f968e9e538" />

<img width="621" height="302" alt="image" src="https://github.com/user-attachments/assets/6c74e9f4-d07d-4709-8b0b-2e05e634ff1a" />


