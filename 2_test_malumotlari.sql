INSERT INTO loans (loan_id, client_name, loan_amount, term_months, issue_date) VALUES
(1, 'Aliyev Vali', 50000000, 12, '2025-01-10'),
(2, 'Karimov Jasur', 120000000, 24, '2025-02-05'),
(3, 'Toshmatov Eshmat', 30000000, 12, '2025-01-20'),
(4, 'Sadirova Aziza', 85000000, 36, '2025-01-15');

INSERT INTO payments (payment_id, loan_id, expected_amount, paid_amount, delay_days) VALUES
(101, 1, 4500000, 4500000, 0),   
(102, 2, 6000000, 0, 45),        
(103, 3, 3000000, 1500000, 15),  
(104, 4, 3200000, 3200000, 0);
