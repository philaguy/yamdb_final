FROM python:3.7-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
COPY ./ .
CMD ["gunicorn", "api_yamdb.wsgi", "--bind", "0:8000"]
