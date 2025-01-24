-- Создание таблицы для хранения информации о книгах
create table Books(
    id int AUTO_INCREMENT PRIMARY KEY,
    title varchar(255) not null,
    author varchar(255) not null,
    genre varchar(100),
    year_published YEAR,
    created_at TIMESTAMP DEFAULT current_timestamp
);

-- Создание таблицы для хранения информации о читателях
create table Readers(
    id int auto_increment PRIMARY KEY,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    email varchar(255) not null UNIQUE,
    created_at timestamp default current_timestamp
);

-- Создание таблицы для учета выдачи книг
create table Loans(
    id int auto_increment PRIMARY key,
    book_id int not null,
    reader_id int not null,
    loan_date DATE not null,
    return_date DATE,
    created_at TIMESTAMP DEFAULT current_timestamp,
    Foreign Key (book_id) REFERENCES Books(id) on delete CASCADE,
    Foreign Key (reader_id) REFERENCES Readers(id) on delete CASCADE
)
