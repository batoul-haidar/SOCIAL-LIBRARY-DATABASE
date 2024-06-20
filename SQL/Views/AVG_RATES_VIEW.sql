CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `social_library`.`avg_rates` AS
    SELECT 
        `social_library`.`review`.`BOOK_ID` AS `BOOK_ID`,
        AVG(`social_library`.`review`.`RATE`) AS `AVG_RATE`
    FROM
        `social_library`.`review`
    GROUP BY `social_library`.`review`.`BOOK_ID`