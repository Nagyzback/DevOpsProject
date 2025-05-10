# Django Blog Project with Docker and CI/CD

A simple Django blog project using PostgreSQL as the database. The project is containerized using Docker and includes automated testing and migrations with GitHub Actions.

---

## 🚀 Features

- Django 4.x+ with PostgreSQL
- Docker support for easy development and deployment
- GitHub Actions for CI/CD: migrations + test run
- Modular and beginner-friendly structure

---

## 📦 Requirements

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- Optional: Python 3.12+ and pip (for local runs without Docker)

---

## 🐳 Local Setup with Docker

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/your-repo.git
   cd your-repo
    ```
2. Build and run the containers:

   ```bash
    docker-compose up --build
    ```
3. Open the browser:
- App: http://localhost:8000

🧪 Running Migrations and Tests:   
   ```bash
    docker-compose exec web python manage.py migrate
    docker-compose exec web python manage.py createsuperuser
    docker-compose exec web python manage.py test
   ```

⚙️ CI/CD with GitHub Actions
On every push to main, the workflow will:

Set up PostgreSQL service

Install dependencies

Run migrations

Run tests

See .github/workflows/django.yml for details.
