SELECT Members.name AS member, Books.title AS book, Loans.due_date
FROM Loans
JOIN Members ON Loans.member_id = Members.member_id
JOIN Books ON Loans.book_id = Books.book_id
WHERE Loans.return_date IS NULL;

SELECT Members.name, Books.title, Loans.due_date,
       DATEDIFF(CURDATE(), Loans.due_date) AS days_late
FROM Loans
JOIN Members ON Loans.member_id = Members.member_id
JOIN Books ON Loans.book_id = Books.book_id
WHERE Loans.return_date IS NULL
  AND Loans.due_date < CURDATE();
  
SELECT Books.title, COUNT(*) AS times_borrowed
FROM Loans
JOIN Books ON Loans.book_id = Books.book_id
GROUP BY Books.title
ORDER BY times_borrowed DESC;

SELECT Members.name, COUNT(Loans.loan_id) AS total_loans
FROM Members
LEFT JOIN Loans ON Members.member_id = Loans.member_id
GROUP BY Members.member_id, Members.name
ORDER BY total_loans DESC;