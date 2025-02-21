CREATE DEFINER=`root`@`localhost` PROCEDURE `EMP_INFO`(in Office_code int)
BEGIN
select * from employees,offices  
 WHERE offices.officeCode = Office_code;

END;