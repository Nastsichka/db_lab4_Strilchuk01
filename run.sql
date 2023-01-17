-- ФУНКЦІЯ (кількість поем заданого жанру)

DROP FUNCTION poems_count;

CREATE OR REPLACE FUNCTION poems_count(genre text) 
RETURNS INTEGER
LANGUAGE 'plpgsql'
AS $$
   BEGIN
      RETURN (SELECT COUNT(*)
      FROM poems INNER JOIN genres ON poems.genre_id = genres.genre_id
      WHERE genres.genre_name = genre);            
   END;
$$

SELECT poems_count('Folklore')


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



-- ТРІГЕР 

SELECT * from authors
SELECT * FROM authors_audit

DROP TABLE IF EXISTS authors_audit;
CREATE TABLE authors_audit(
	id SERIAL PRIMARY KEY,
   user_name varchar(50) NOT NULL,
   update_date DATE NOT NULL,
   update_time TIME NOT NULL,
   author_name varchar(50)
);

DROP TRIGGER IF EXISTS authors_update_details ON authors;
DROP FUNCTION IF EXISTS table_authors_audit CASCADE;

CREATE OR REPLACE FUNCTION table_authors_audit() RETURNS trigger 
LANGUAGE 'plpgsql'
AS $$
DECLARE 
   aut_id authors.author_id%type;
BEGIN
   SELECT OLD.author_id INTO aut_id;

 	INSERT INTO authors_audit(id, user_name, update_date, update_time, author_name)
		VALUES(aut_id, user, now(), now(), OLD.author_name);
	RETURN NULL;
END;
$$ ;

CREATE TRIGGER authors_update_details 
AFTER DELETE ON authors
FOR EACH ROW EXECUTE FUNCTION table_authors_audit();


SELECT * from authors
SELECT * FROM authors_audit
DELETE FROM Authors WHERE author_id = 1









