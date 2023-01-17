-- ПРОЦЕДУРА (додає нового автора в таблицю)

DROP PROCEDURE add_new_author

CREATE OR REPLACE PROCEDURE add_new_author(aut_name char(100))
LANGUAGE'plpgsql'
AS $$
   DECLARE 
      aut_id authors.author_id%type;
   BEGIN
      SELECT (author_id+1) INTO aut_id FROM authors ORDER BY author_id DESC LIMIT 1;
      INSERT INTO authors(author_id, author_name)
      VALUES(aut_id, aut_name);
   END;
$$

CALL add_new_author('ANASTASIIA STRILCHUK')
SELECT * FROM authors