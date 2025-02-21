CREATE DEFINER=`root`@`localhost` PROCEDURE `Customers_info`(in customer_id int)
BEGIN
select * from customers
where customerNumber = customer_id;
END