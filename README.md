# Проект Yamdb:
База данных лучших произведений мира и оценки экспертов

## Статус последнего релиза:
![Workflow_yamdb](https://github.com/github/docs/actions/workflows/yamdb_workflow.yml/badge.svg?event=push)

## Описание:

### 1. Краткое описание:
Бэкенд базы данных произведений и оценок экспертов

### 2. Шаблон ENV:
DB_ENGINE=django.db.backends.postgresql
DB_NAME=postgres
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
DB_HOST=db
DB_PORT=5432

### 3. Запуск в docker-контейнере:
cd infra
docker-compose up -d --build
docker-compose exec web python manage.py makemigrations reviews users
docker-compose exec web python manage.py migrate
docker-compose exec web python manage.py createsuperuser
docker-compose exec web python manage.py collectstatic --no-input

### 4. Импорт данных в DB:
docker-compose exec web python manage.py loaddata fixtures.json

## Как запустить проект:

### 1. Клонировать репозиторий и перейти в него в командной строке:

git clone https://github.com/philaguy/api_yamdb.git

cd api_yamdb

### 2. Cоздать и активировать виртуальное окружение:

python3 -m venv env

source env/bin/activate

### 3. Установить зависимости из файла requirements.txt:

python3 -m pip install --upgrade pip

pip install -r requirements.txt

### 4. Выполнить миграции:

python3 manage.py migrate

### 5. Запустить проект:

python3 manage.py runserver

### OpenAPI схема:

http://localhost/redoc/

### Автор:
Роман Камалетдинов
[Git](https://github.com/philaguy)
[Contact me](mailto:philaguy@yandex.ru)
