CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `social_library`.`list_reading_history` AS
    SELECT 
        `bs`.`USER_ID` AS `USER_ID`,
        `b`.`TITLE` AS `TITLE`,
        `a`.`AUTHOR_NAME` AS `AUTHOR_NAME`,
        `g`.`GENRE_NAME` AS `GENRE_NAME`,
        `social_library`.`ar`.`AVG_RATE` AS `AVG_RATE`,
        'RECOMMENDED BY YOUR READING HISTORY' AS `RECOMMENDED BY YOUR READING HISTORY`
    FROM
        ((((`social_library`.`book` `b`
        JOIN `social_library`.`bookshelf` `bs` ON ((`bs`.`BOOK_ID` = `b`.`ID`)))
        JOIN `social_library`.`genre` `g` ON ((`g`.`ID` = `b`.`GENRE_ID`)))
        JOIN `social_library`.`author` `a` ON ((`a`.`ID` = `b`.`AUTHOR_ID`)))
        JOIN `social_library`.`avg_rates` `ar` ON ((`social_library`.`ar`.`BOOK_ID` = `b`.`ID`)))
    WHERE
        (`bs`.`CATEGORY_ID` = 1)