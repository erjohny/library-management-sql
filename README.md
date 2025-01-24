# Управление библиотекой

Этот проект представляет собой систему управления библиотекой, основанную на SQL, которая позволяет учитывать книги, читателей и выдачу книг.

## Основной функционал
- **Книги**: Хранение информации о книгах (название, автор, жанр, год издания).
- **Читатели**: Учет данных о читателях (имя, фамилия, email).
- **Выдача книг**: Управление выдачей и возвратом книг.
- **Поиск**: Поиск книг по названию, автору или жанру.
- **Отчеты**: Список книг, которые сейчас находятся на руках у читателей.

## Структура базы данных
Проект включает следующие таблицы:
- `Books` (Книги): Хранит информацию о книгах.
- `Readers` (Читатели): Учет членов библиотеки.
- `Loans` (Выдачи): Управление выдачей и возвратом книг.

## Как использовать
1. Выполните SQL-скрипты из папки `scripts/`:
   - `create_tables.sql` для создания структуры базы данных.
   - `insert_data.sql` для добавления тестовых данных.
   - `queries.sql` для выполнения часто используемых запросов.

2. Подключитесь к вашей базе данных (например, MySQL или PostgreSQL) и выполните скрипты по порядку.

## Требования
- СУБД (например, MySQL, PostgreSQL).
- Клиент SQL или командная строка для выполнения запросов.

