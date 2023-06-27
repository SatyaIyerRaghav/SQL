use company;

/**
Write a query to find the month number (Eg: 4 corresponds to April) in which the most number of payments were made.
**/
select * from payments;

SELECT 
   customerNumber,
   MONTH(paymentDate) AS Months,
   count(amount) AS Payment
FROM
   payments
GROUP BY Months;
-- ORDER BY max(amount);   

Select month(payment_date) as mn,
count(amount) as No_of_payments 
from payments
group by mn
order by No_of_payments desc limit 1


   