CREATE DEFINER=`root`@`localhost` PROCEDURE `NEW_BOOK_BY_GENRE`(IN GENRE_NAME VARCHAR (50), IN RELEASED_DATE DATE)
BEGIN
SELECT B.TITLE, B.RELEASED_DATE, G.GENRE_NAME, A.AUTHOR_NAME FROM BOOK B 
JOIN GENRE G ON G.ID = B.GENRE_ID
JOIN AUTHOR A ON A.ID = B.AUTHOR_ID
WHERE G.GENRE_NAME = GENRE_NAME AND B.RELEASED_DATE >= RELEASED_DATE;
END