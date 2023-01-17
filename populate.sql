-- authors
INSERT INTO authors (author_id, author_name)
  	VALUES (1, 'WILLIAM SHAKESPEARE');
INSERT INTO authors (author_id, author_name)
  	VALUES (2, 'THOMAS BASTARD');
INSERT INTO authors (author_id, author_name)
	  VALUES (3, 'WALLACE STEVENS');
INSERT INTO authors (author_id, author_name)
	VALUES (4, 'LINA KOSTENKO');
INSERT INTO authors (author_id, author_name)
	VALUES (5, 'VASYL SYMONENKO');

-- periods
INSERT INTO periods (period_id, period_name)
  	VALUES (1, 'Renaissance');
INSERT INTO periods (period_id, period_name)
  	VALUES (2, 'Baroque');
INSERT INTO periods (period_id, period_name)
  	VALUES (3, 'Realism');
INSERT INTO periods (period_id, period_name)
  	VALUES (4, 'Modern');
INSERT INTO periods (period_id, period_name)
  	VALUES (5, 'Postmodern');

-- genres
INSERT INTO genres (genre_id, genre_name)
  	VALUES (1, 'Nature');
INSERT INTO genres (genre_id, genre_name)
  	VALUES (2, 'Love');
INSERT INTO genres (genre_id, genre_name)
  	VALUES (3, 'Folklore');
INSERT INTO genres (genre_id, genre_name)
  	VALUES (4, 'Life');
INSERT INTO genres (genre_id, genre_name)
  	VALUES (5, 'Patriotism');


-- poems
INSERT INTO poems (poem_id, poem_name, poem_content, author_id, period_id, genre_id)
	VALUES (1, 'The Phoenix and the Turtle',
			'Let the bird of loudest lay
			 On the sole Arabian tree
			 Herald sad and trumpet be,
			 To whose sound chaste wings obey.',
			1, 1, 1);
INSERT INTO poems (poem_id, poem_name, poem_content, author_id, period_id, genre_id)
	VALUES (2, 'Sonnet 34: Why didst thou promise such a beauteous day',
		    'Why didst thou promise such a beauteous day,
			 And make me travel forth without my cloak,
			 To let base clouds oertake me in my way,
			 Hiding thy bravery in their rotten smoke?',
		    1, 2, 4);
INSERT INTO poems (poem_id, poem_name, poem_content, author_id, period_id, genre_id)
	VALUES (3, 'Sonnet 142: Love is my sin, and thy dear virtue hate',
		    'Love is my sin, and thy dear virtue hate,
			 Hate of my sin, grounded on sinful loving.
			 O, but with mine compare thou thine own state,
			 And thou shalt find it merits not reproving;',
		    1, 1, 2);
INSERT INTO poems (poem_id, poem_name, poem_content, author_id, period_id, genre_id)
	VALUES (4, 'Song: When daisies pied and violets blue',
		    'When daisies pied and violets blue
      		 And lady-smocks all silver-white
			 And cuckoo-buds of yellow hue
			 Do paint the meadows with delight,',
		    1, 4, 1);
INSERT INTO poems (poem_id, poem_name, poem_content, author_id, period_id, genre_id)
	VALUES (5, 'Song of the Witches: Double, double toil and trouble',
		    'Notes: Macbeth: IV.i 10-19; 35-38',
		    2, 1, 1);
INSERT INTO poems (poem_id, poem_name, poem_content, author_id, period_id, genre_id)
	VALUES (6, 'Sonnet 1: From fairest creatures we desire increase',
		    'Under the greenwood tree
			 Who loves to lie with me,
			 And turn his merry note
			 Unto the sweet birds throat,',
		    3, 3, 3);
INSERT INTO poems (poem_id, poem_name, poem_content, author_id, period_id, genre_id)
	VALUES (7, 'Song: Under the greenwood tree',
		    'From fairest creatures we desire increase,
			 That thereby beautys rose might never die,
			 But as the riper should by time decease,
			 His tender heir might bear his memory;',
		    4, 5, 3);
INSERT INTO poems (poem_id, poem_name, poem_content, author_id, period_id, genre_id)
	VALUES (8, 'Sonnet 53: What is your substance, whereof are you made',
		    'What is your substance, whereof are you made,
			 That millions of strange shadows on you tend?
			 Since every one hath, every one, one shade,
			 And you, but one, can every shadow lend.',
		    1, 2, 3);

INSERT INTO poems (poem_id, poem_name, poem_content, author_id, period_id, genre_id)
	VALUES (9, 'Book 7, Epigram 42',
		    'Sir Charles into my chamber coming in,
			 When I was writing of my Fairy Queen;
			 I praysaid hewhen Queen Mab you do see
			 Present my service to her Majesty:',
		    2, 4, 5);
INSERT INTO poems (poem_id, poem_name, poem_content, author_id, period_id, genre_id)
	VALUES (10, 'Book 5, Epigram 20: In Misum & Mopsam.',
		    'Misus and Mopsa hardly could agree,
			 Striving about superiority.
			 The text which says that man and wife are one,
			 Was the chief argument they stood upon.',
		    5, 1, 5);
