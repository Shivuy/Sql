USE EShop

-- THIS IS THE COMMENT
-- Get all the products

Select * from Product

-- Get all the products that have category id = 10

select * from Product where CategoryId=10

-- Get total cost of products listed with category id = 10

Select SUM(cost) from Product 
where CategoryId=10

-- Get product name, cost from product table

select name, cost from Product


-- save above as
CREATE VIEW vw_Product AS
(Select name, cost from Product)

-- See the view result
select * from vw_Product

-- Get all the productsthat starts with k

Select * from Product
where name like 'k%'


select * from Product
where name like '[a-z]%i'

-- Get all product whose cost is not equal to 5000

select * from Product
where cost <> 300/0

-- '^%s$' => The word starts (^) with any character and contains 's' at the end ($)


Select * from Product
where name = 'Tesla Pi' OR name = 'Gaming Lap' OR name = 'Kurthas'

--Better technique

Select * from Product
where name in('Tesla Pi','Gaming Lap')

-- Get all the products having a category Id matching a category in ProductCategory table
select * from Product
Where CategoryId IN (select Id from ProductCategory)

--Get customer name and order id for all the customers
Select [Name], [OrderId] from Customer, Orders
where Customer.Id = Orders.CustomerId


Select SUM(cost)
from orders, Customer, Product
where orders.CustomerId = CustomerId
and Orders.ProductId = product.Id
and customer.Name = 'MSD'