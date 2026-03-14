-- PAR 30+ (30 kundan ortiq kechikkanlar) ulushini hisoblash
SELECT 
    ROUND((SUM(CASE WHEN delay_days > 30 THEN expected_amount ELSE 0 END) / SUM(expected_amount)) * 100, 2) as PAR_30_Foizi
FROM payments;

-- Mijozlar holati bo'yicha hisobot
SELECT 
    l.client_name,
    CASE 
        WHEN p.delay_days = 0 THEN 'Yaxshi'
        WHEN p.delay_days BETWEEN 1 AND 30 THEN 'Monitoring'
        ELSE 'Xavfli (PAR 30+)'
    END as mijoz_holati
FROM loans l
JOIN payments p ON l.loan_id = p.loan_id;
