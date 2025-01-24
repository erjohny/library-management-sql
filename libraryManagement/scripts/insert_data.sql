insert into Books(title, author, genre, year_published) 
values
("1984","Джордж Оруэлл","Антиутопия, политическая фантастика", 1949),
("Убийство в Восточном экспрессе"," Агата Кристи","Детектив", 1934),
("Мастер и Маргарита","Михаил Булгаков","Мистика, философский роман", 1967),
("Гарри Поттер и философский камень","Дж. К. Роулинг","Фэнтези", 1997),
("Тихий Дон","Михаил Шолохов","Исторический роман", 1928);

insert into Readers(first_name, last_name, email) 
values
("Иван","Петров","ivan.petrov@example.com"),
("Анна","Смирнова","anna.smirnova@example.com"),
("Сергей","Васильев","sergey.vasiliev@example.com"),
("Ольга","Иванова","olga.ivanova@example.com"),
("Дмитрий","Александров","dmitry.aleksandrov@example.com");

INSERT INTO Loans (book_id, reader_id, loan_date, return_date) VALUES
(1, 1, '2025-01-01', '2025-01-15'), 
(2, 2, '2025-01-05', NULL),          
(3, 3, '2025-01-10', NULL),          
(4, 4, '2025-01-12', null);