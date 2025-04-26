# Используем официальный образ Python (slim для уменьшения размера)
FROM python:3.9-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы проекта
COPY . .

# Устанавливаем зависимости MkDocs
RUN pip install mkdocs mkdocs-material

# Открываем порт 8000 для mkdocs serve
EXPOSE 8000

# Команда для запуска локального сервера
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
