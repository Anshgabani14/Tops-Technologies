CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `nyc_cust` AS
    SELECT 
        `customers`.`customerNumber` AS `customerNumber`,
        `customers`.`customerName` AS `customerName`,
        `customers`.`contactLastName` AS `contactLastName`,
        `customers`.`contactFirstName` AS `contactFirstName`,
        `customers`.`phone` AS `phone`,
        `customers`.`addressLine1` AS `addressLine1`,
        `customers`.`addressLine2` AS `addressLine2`,
        `customers`.`city` AS `city`,
        `customers`.`state` AS `state`,
        `customers`.`postalCode` AS `postalCode`,
        `customers`.`country` AS `country`,
        `customers`.`salesRepEmployeeNumber` AS `salesRepEmployeeNumber`,
        `customers`.`creditLimit` AS `creditLimit`
    FROM
        `customers`
    WHERE
        (`customers`.`city` = 'NYC')