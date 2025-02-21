CREATE DEFINER=`root`@`localhost` FUNCTION `Discount`(amount decimal(10,2) ) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
RETURN amount - (amount*50/100);
END