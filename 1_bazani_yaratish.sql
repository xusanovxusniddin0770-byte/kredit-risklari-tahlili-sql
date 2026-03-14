CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    client_name VARCHAR(100),
    loan_amount DECIMAL(15,2),
    term_months INT,
    issue_date DATE
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    loan_id INT,
    expected_amount DECIMAL(15,2),
    paid_amount DECIMAL(15,2),
    delay_days INT,
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id)
);
