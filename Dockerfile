FROM python:3.9-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Установим необходимые пакеты для сборки
RUN apt-get update && apt-get install -y gcc libpq-dev build-essential

# Копируем requirements.txt и устанавливаем зависимости
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь проект
COPY . /app/

# Создаем нового пользователя и переключаемся на него
RUN adduser --disabled-password appuser
USER appuser

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
