INSERT INTO locations 
(name, nickname, address, latitude, longitude, phone_number, name_of_supervisor)
VALUES
("Rosendale", "Rose", "Rosendale, NY 12472", "74.0822° W", "41.8439° N", "845-658-3131", "Phose"),
("Eddyville", "Eddy", "Eddyville, NY 12401", "74.0000° W", "41.5548° N", "845-802-0025", "Pheddy"),
("Wappingers Falls", "Wapp", "Wappingers Falls, NY 12590", "73.9181° W", "41.5992° N", "845-838-0094", "Phingers");

INSERT INTO crops 
(name, color, type, quantity, early_harvest_date, location)
VALUES
("Almond", "Brown", "Prunus dulcis", "100", "September, 24", 1),
("Apple", "Red", "Malus sylvestris", "250", "November, 12", 1),
("Artichoke", "Green", "Cynara scolymus", "90", "January, 2", 2),
("Cauliflower", "Yellow", "Brassica oleracea", "500", "April, 18", 2),
("Ginger", "Brown", "Zingiber officinale", "321", "August, 1", 3),
("Orange", "Orange", "Citrus sinensis", "55", "March, 20", 3);

-- Rosendale
-- Eddyville
-- Wappingers Falls