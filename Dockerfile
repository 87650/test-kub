# Используем базовый образ Python
FROM python:3.9-slim

# Устанавливаем зависимости
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt

# Копируем наш Python код в контейнер
COPY app.py /app

# Указываем команду для запуска сервера
CMD ["python", "app.py"]
