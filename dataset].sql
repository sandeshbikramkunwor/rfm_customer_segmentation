--creating a table

CREATE TABLE sales (
    order_id INT,
    customer_id INT,
    customer_name VARCHAR(50),
    order_date DATE,
    sale_amount DECIMAL(10,2));

-- Values for the table
insert into sales values
(1,	'C001',	'Ram',	'2024-12-28',	1200),
(2,	'C002',	'Shyam',	'2024-11-15',	800),
(3,	'C001',	'Ram',	'2024-10-05',	500),
(4,	'C003',	'Hari',	'2024-12-30',	1500),
(5,	'C002',	'Shyam',	'2024-09-20',	400),
(6,	'C004',	'Sita',	'2024-08-10',	300),
(7,	'C003',	'Hari',	'2024-07-05',	700),
(8,	'C001',	'Ram',	'2024-06-18',	900),
(9,	'C005',	'Gita',	'2024-12-31',	2000),
(10,	'C004',	'Sita',	'2024-12-01',	600),
(11,	'C005',	'Gita',	'2024-11-10',	1200),
(12,	'C002',	'Shyam',	'2024-12-20',	1000)
