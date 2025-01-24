-- 1. Получить все книги
use mydb;
SELECT * FROM readers;

-- 2. Найти книгу по названию
SELECT * FROM books where title like "%1984%";

-- 3. Получить список всех читателей
SELECT * from Readers;

-- 4. Получить читателя по email
SELECT * from readers WHERE email="alex.@gmail.com";

-- 5. Получить все книги, выданные конкретному читателю (например, по id читателя)SELECT Books.title, Books.author, Loans.loan_date, Loans.return_date
from Loans
Join Books on Loans.book_id = Books.id
where Loans.reader_id = 1;

-- 6. Получить все книги, которые на данный момент не возвращены
Select Books.title, Books.author, Loans.loan_date
from Loans
join Books on Loans.book_id = Books.id
Where Loans.return_date is null;

-- 7. Получить всех читателей, у которых есть просроченные книги
select Readers.first_name, Readers.last_name, Books.title, Loans.loan_date
from Loans
join Readers on Loans.reader_id=Readers.id
join Books on Loans.book_id=Books.id
where Loans.return_date is null and Loans.loan_date<CURDATE();

-- 8. Возврат книги (обновление даты возврата)
Update Loans Set return_date = CURDATE() where book_id=1 and reader_id=1;

-- 9. Получить статистику по книгам: сколько раз каждая книга была выдана
Select Books.title, count(Loans.id) as loan_count
from Loans
join Books on Loans.book_id=Books.id
GROUP Books.id;

-- 10. Удалить книгу по id
Delete from Books where id = 1