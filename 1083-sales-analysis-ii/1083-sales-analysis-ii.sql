/* Write your T-SQL query statement below */
select
    Sales.buyer_id
from Product
inner join Sales on Product.product_id = Sales.product_id
group by Sales.buyer_id
having 
    sum(case when Product.product_name = 'S8' then 1 else 0 end) > 0
    and
    sum(case when Product.product_name = 'iPhone' then 1 else 0 end) = 0