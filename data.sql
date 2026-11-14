USE library;

INSERT INTO Authors (name) VALUES
('George Orwell'),
('Agatha Christie'),
('Yuval Noah Harari'),
('Naguib Mahfouz'),
('Paulo Coelho');

INSERT INTO Categories (name) VALUES
('Fiction'),
('Mystery'),
('History'),
('Self-Development');

INSERT INTO Books (title, isbn, author_id, category_id) VALUES
('1984', '978-0-00-000001-1', 1, 1),
('Animal Farm', '978-0-00-000002-2', 1, 1),
('Murder on the Orient Express', '978-0-00-000003-3', 2, 2),
('And Then There Were None', '978-0-00-000004-4', 2, 2),
('Sapiens', '978-0-00-000005-5', 3, 3),
('Homo Deus', '978-0-00-000006-6', 3, 3),
('The Alchemist', '978-0-00-000007-7', 5, 4),
('Cairo Trilogy', '978-0-00-000008-8', 4, 1),
('Midaq Alley', '978-0-00-000009-9', 4, 1);

INSERT INTO Members (name, phone, join_date) VALUES
('Ahmed Ali', '0501111111', '2026-01-10'),
('Sara Khaled', '0502222222', '2026-02-15'),
('Omar Hassan', '0503333333', '2026-03-01'),
('Noura Saad', '0504444444', '2026-04-20'),
('Fahad Salem', '0505555555', '2026-05-05'),
('Lina Yousef', '0506666666', '2026-06-18');

INSERT INTO Loans (member_id, book_id, loan_date, due_date, return_date) VALUES
(1, 1, '2026-10-01', '2026-10-15', '2026-10-12'),
(2, 3, '2026-10-05', '2026-10-19', '2026-10-18'),
(3, 5, '2026-10-10', '2026-10-24', NULL),
(1, 7, '2026-10-20', '2026-11-03', '2026-11-01'),
(4, 2, '2026-10-25', '2026-11-08', NULL),
(5, 8, '2026-11-01', '2026-11-15', NULL),
(2, 6, '2026-11-03', '2026-11-17', NULL),
(6, 4, '2026-11-05', '2026-11-19', NULL),
(3, 1, '2026-11-08', '2026-11-22', NULL),
(1, 9, '2026-11-10', '2026-11-24', NULL);