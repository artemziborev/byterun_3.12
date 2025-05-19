
# Используем официальный образ Python 3.12
FROM python:3.12-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем исходники
COPY . /app

# Устанавливаем зависимости
RUN pip install -r requirements.txt

# Запуск тестов по умолчанию
CMD ["python3", "-m", "unittest", "discover", "-s", "tests"]
