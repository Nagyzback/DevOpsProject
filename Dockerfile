FROM python:3.9-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN apt-get update && apt-get install -y gcc libpq-dev

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app/

RUN adduser --disabled-password appuser
USER appuser

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
