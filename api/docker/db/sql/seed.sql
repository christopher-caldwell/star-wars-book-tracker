INSERT INTO author (name, url)
  VALUES
   ('Drew Karpyshyn', 'http://drewkarpyshyn.com/'), --1
   ('Paul S. Kemp', 'https://twitter.com/paulskemp?lang=en'), --2
   ('Sean Williams', 'http://seanwilliams.com/'), --3
   ('John Jackson Miller', 'https://www.farawaypress.com/'), --4
   ('James Luceno', 'https://www.penguinrandomhouse.com/authors/18222/james-luceno'), --5
   ('Ryder Windham', 'https://en.wikipedia.org/wiki/Ryder_Windham'), --6
   ('Joe Schreiber', 'https://starwars.fandom.com/wiki/Joe_Schreiber'), --7
   ('Michael Reeves', 'https://www.audible.com/author/Michael-Reaves/B000APYMP4'), --8
   ('Claudia Gray', 'http://www.claudiagray.com/books/'), --9
   ('Terry Brooks', 'https://starwars.fandom.com/wiki/Terry_Brooks'), --10
   ('E.K. Johnston', 'https://www.ekjohnston.ca/'), --11
   ('Greg Bear', 'https://www.gregbear.com/'), --12
   ('Timothy Zahn', 'https://www.facebook.com/TimothyZahn/'), --13
   ('Alan Dean Foster', 'http://www.alandeanfoster.com/'), --14
   ('R.A. Salvatore', 'http://rasalvatore.com/'), --15
   ('Karen Miller', 'http://karenmiller.net/'), --16
   ('Karen Traviss', 'http://www.karentraviss.com/'), --17
   ('Matthew Stover', 'https://twitter.com/mwstover?lang=en'), --18
   ('Jude Watson', 'http://judewatsonbooks.com/'), --19
   ('Steven Barnes', 'https://stevenbarneslife.wordpress.com/'), --20
   ('Christine Golden', 'http://www.christinegolden.com/'), --21
   ('Beth Revis', 'https://twitter.com/bethrevis'), --22
   ('Rae Carson', 'http://www.raecarson.com/'), --23
   ('Mur Lafferty', 'http://murverse.com/'), --24
   ('Alexander Freed', 'https://www.alexanderfreed.com/'), --25
   ('Kevin Hearne', 'https://kevinhearne.com/'), --26
   ('Chuck Wendig', 'http://terribleminds.com/ramble/'), --27
   ('Daniel Jose Older', 'http://ghoststar.net/'), --28
   ('Delilah S. Dawson', 'https://www.whimsydark.com/'); --29
   

INSERT INTO book (title, author, pages, era, series, image_name, release_date, is_legends, num_of_ratings, rating, tags)
  VALUES
   ('The Old Republic: Revan', 1, 0, 'old_republic', null, 'revan.jpg', '2012-05-29', TRUE, 0, 0, '{"old republic", "revan", "swotor", "mandalorian", "jedi", "sith"}'),
   ('The Old Republic: Deceived', 2, 0, 'old_republic', null, 'swtor_deceived_cover.jpg', '2012-05-29', TRUE, 0, 0, '{"malgus", "old republic", "sith", "swtor"}'),
   ('Red Harvest', 2, 0, 'old_republic', null, 'red-harvest.jpg', '2012-02-28', TRUE, 0, 0, '{""}'),
   ('The Old Republic: Fatal Alliance', 3, 0, 'old_republic', null, 'fatal_alliance.jpg', '2011-05-24', TRUE, 0, 0, '{"mandalorian"}'),
   ('The Old Republic: Annihilation', 1, 0, 'old_republic', null, 'annihilation.jpg', '2013-10-29', TRUE, 0, 0, '{"sith"}'),
   ('Knight Errant', 4, 0, 'old_republic', null, 'knight_errant.jpg', '2013-10-29', TRUE, 0, 0, '{"jedi", "sith", "spy"}'),
   ('Darth Bane: Path of Destruction', 1, 0, 'old_republic', 'Darth Bane', 'path_of_destruction.jpg', null, TRUE, 0, 0, '{"jedi", "sith", "spy"}'),
   ('Darth Bane: Rule of Two', 1, 0, 'old_republic', 'Darth Bane', 'rule_of_two.jpg', null, TRUE, 0, 0, '{"jedi", "sith", "bane", "zannah", "rule of two"}'),
   ('Darth Bane: Dynasty of Evil', 1, 0, 'old_republic', 'Darth Bane', 'dynasty_of_evil.jpg', null, TRUE, 0, 0, '{"jedi", "sith", "bane", "zannah", "rule of two"}'),
   ('Darth Plagueis', 5, 0, 'high_republic', null, 'plagueis.jpg', null, TRUE, 0, 0, '{"plagueis", "sith", "sidious", "naboo"}'),
   ('The Rise and Fall of Darth Vader', 6, 0, 'civil_war', null, 'rise_and_fall_of_darth_vader.jpg', null, TRUE, 0, 0, '{"vader", "anakin"}'),
   ('Darth Maul: Saboteur', 5, 0, 'high_republic', null, 'maul_sab.jpg', null, TRUE, 0, 0, '{"sidious", "maul", "sith"}'),
   ('Maul: Lockdown', 7, 0, 'high_republic', null, 'maul_sab.jpg', null, TRUE, 0, 0, '{"sidious", "maul", "sith"}'),
   ('Cloak of Deception', 5, 0, 'high_republic', null, 'cloak_of_deception.jpg', null, TRUE, 0, 0, '{"jedi", "senate", "chancellor"}'),
   ('Darth Maul: Shadow Hunter', 8, 0, 'high_republic', null, 'shadow_hunter.jpg', null, TRUE, 0, 0, '{"sidious", "maul", "sith"}'),
   ('Master and Apprentice', 9, 0, 'high_republic', null, 'master_apprentice.jpg', null, FALSE, 0, 0, '{"jedi", "obi-wan", "kenobi", "qui gon"}'),
   ('Republic Commando: Hard Contact', 17, 0, 'clone_wars', 'Republic Commando', 'hard_contact.jpg', null, TRUE, 0, 0, '{"clones", "commando", "trooper", "rebuplic"}'),
   ('Catalyst', 5, 0, 'civil_war', null, 'catalyst.png', null, FALSE, 0, 0, '{"death star", "krennic", "erso", "galen", "jyn", "stardust"}'),
   ('Tarkin', 5, 0, 'civil_war', null, 'tarkin.png', null, FALSE, 0, 0, '{"empire", "carrion", "eriadu", "tarkin", "vader"}'),
   ('Thrawn', 13, 0, 'civil_war', null, 'thrawn.png', null, FALSE, 0, 0, '{"empire", "thrawn", "eli", "chiss", "chimera"}'),
   ('Lost Stars', 9, 0, 'civil_war', null, 'lost_stars.png', null, FALSE, 0, 0, '{"empire", "rebel", "hoth", "jelucan", "cienna"}'),
   ('Inferno Squad', 21, 0, 'civil_war', null, 'inferno_squad.jpeg', null, FALSE, 0, 0, '{"empire", "rebel", "iden versio", "inferno"}'),
   ('Battlefront: Twlight Company', 25, 0, 'civil_war', null, 'twilight_company.jpeg', null, FALSE, 0, 0, '{"empire", "rebel", "hoth", "namir", "chalis"}'),
   ('Aftermath', 27, 0, 'post_civil_war', 'Aftermath', 'Star_Wars_Aftermath_Cover.jpg', null, FALSE, 0, 0, '{"empire", "rebel", "wexley", "rae sloan", "jakku"}'),
   ('Aftermath: Life Debt', 27, 0, 'post_civil_war', 'Aftermath', 'life_debt.png', null, FALSE, 0, 0, '{"empire", "rebel", "wexley", "rae sloan", "jakku"}'),
   ('Aftermath: Empires End', 27, 0, 'post_civil_war', 'Aftermath', 'empires_end.jpg', null, FALSE, 0, 0, '{"empire", "rebel", "wexley", "rae sloan", "jakku"}'),
   ('Phasma', 29, 0, 'post_civil_war', null, 'phasma.jpg', null, FALSE, 0, 0, '{"first", "order", "phasma", "hux", "cardinal"}');