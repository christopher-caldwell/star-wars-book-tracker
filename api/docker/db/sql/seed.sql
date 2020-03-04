INSERT INTO author (name, url)
  VALUES
   ('Drew Karpyshyn', 'http://drewkarpyshyn.com/'),
   ('Paul S. Kemp', 'https://twitter.com/paulskemp?lang=en'),
   ('Sean Williams', 'http://seanwilliams.com/'),
   ('John Jackson Miller', 'https://www.farawaypress.com/'),
   ('James Luceno', 'https://www.penguinrandomhouse.com/authors/18222/james-luceno'),
   ('Ryder Windham', 'https://en.wikipedia.org/wiki/Ryder_Windham'),
   ('Joe Schreiber', 'https://starwars.fandom.com/wiki/Joe_Schreiber'),
   ('Michael Reeves', 'https://www.audible.com/author/Michael-Reaves/B000APYMP4'),
   ('Claudia Gray', 'http://www.claudiagray.com/books/'),
   ('Terry Brooks', 'https://starwars.fandom.com/wiki/Terry_Brooks'),
   ('E.K. Johnston', 'https://www.ekjohnston.ca/'),
   ('Greg Bear', 'https://www.gregbear.com/'),
   ('Timothy Zahn', 'https://www.facebook.com/TimothyZahn/'),
   ('Alan Dean Foster', 'http://www.alandeanfoster.com/'),
   ('R.A. Salvatore', 'http://rasalvatore.com/'),
   ('Karen Miller', 'http://karenmiller.net/'),
   ('Karen Traviss', 'http://www.karentraviss.com/'),
   ('Matthew Stover', 'https://twitter.com/mwstover?lang=en'),
   ('Jude Watson', 'http://judewatsonbooks.com/'),
   ('Steven Barnes', 'https://stevenbarneslife.wordpress.com/'),
   ('Christine Golden', 'http://www.christinegolden.com/'),
   ('Beth Revis', 'https://twitter.com/bethrevis'),
   ('Rae Carson', 'http://www.raecarson.com/'),
   ('Mur Lafferty', 'http://murverse.com/'),
   ('Alexander Freed', 'https://www.alexanderfreed.com/'),
   ('Kevin Hearne', 'https://kevinhearne.com/'),
   ('Chuck Wendig', 'http://terribleminds.com/ramble/'),
   ('Daniel Jose Older', 'http://ghoststar.net/'),
   ('Delilah S. Dawson', 'https://www.whimsydark.com/');
   

INSERT INTO book (title, author, pages, era, series, image_name, release_date, is_legends, num_of_ratings, rating, tags)
  VALUES
   ('The Old Republic: Revan', 1, 0, 'old_republic', null, 'revan.jpg', '2012-05-29', TRUE, 0, 0, '{"old republic", "revan", "swotor", "mandalorian", "jedi", "sith"}'),
   ('The Old Republic: Deceived', 2, 0, 'old_republic', null, 'swtor_deceived_cover.jpg', '2012-05-29', TRUE, 0, 0, '{"malgus", "old republic", "sith", "swtor"}'),
   ('Red Harvest', 2, 0, 'old_republic', null, 'red-harvest.jpg', '2012-02-28', TRUE, 0, 0, '{""}'),
   ('The Old Republic: Fatal Alliance', 3, 0, 'old_republic', null, 'fatal_alliance.jpg', '2011-05-24', TRUE, 0, 0, '{"mandalorian"}'),
   ('The Old Republic: Annihilation', 1, 0, 'old_republic', null, 'annihilation.jpg', '2013-10-29', TRUE, 0, 0, '{"sith"}'),
   ('Knight Errant', 4, 0, 'old_republic', null, 'knight_errant.jpg', '2013-10-29', TRUE, 0, 0, '{"jedi", "sith", "spy"}'),
   ('Darth Bane: Path of Destruction', 1, 0, 'old_republic', null, 'path_of_destruction.jpg', null, TRUE, 0, 0, '{"jedi", "sith", "spy"}');