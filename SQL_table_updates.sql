-- Update name to change 2019 table to match 2022
UPDATE top_500_2019
SET name = 'Robin Zeng'
WHERE name='Zeng Yuqun';

SELECT * FROM top_500_2019

-- Insert Michael Bloomberg into the 2019 table
INSERT INTO top_500_2019 (name, net_worth19, country, source)
VALUES ('Michael Bloomberg', 55.5, 'United States', 'Bloomberg LP');

-- Insert Zhong Shanshan into the 2019 table
INSERT INTO top_500_2019 (name, net_worth19, country, source)
VALUES ('Zhong Shanshan', 1.8, 'China', 'Food & Beverage');

-- Insert Julia Koch into the 2019 table
INSERT INTO top_500_2019 (name, net_worth19, country, source)
VALUES ('Julia Koch', 43.5, 'United States', 'Industrial');

-- Insert Zhang Yiming into the 2019 table
INSERT INTO top_500_2019 (name, net_worth19, country, source)
VALUES ('Zhang Yiming', 16.2, 'China', 'Technology');

-- Insert Rodolphe Saade into the 2019 table
INSERT INTO top_500_2019 (name, net_worth19, country, source)
VALUES ('Rodolphe Saade', 10.5, 'France', 'Shipping');

-- Insert Miriam Adelson into the 2019 table
INSERT INTO top_500_2019 (name, net_worth19, country, source)
VALUES ('Miriam Adelson', 33.2, 'United States', 'Entertainment');

-- Insert Jeff Yass into the 2019 table
INSERT INTO top_500_2019 (name, net_worth19, country, source)
VALUES ('Jeff Yass', 12, 'United States', 'Trading');

-- Insert Low Tuck Kwong into the 2019 table
INSERT INTO top_500_2019 (name, net_worth19, country, source)
VALUES ('Low Tuck Kwong', 2.4, 'Singapore', 'Coal');

-- Insert MacKenzie Scott into the 2019 table
INSERT INTO top_500_2019 (name, net_worth19, country, source)
VALUES ('MacKenzie Scott', 36.9, 'United States', 'Amazon');

-- Insert German Larrea Mota Velasco into the 2019 table
INSERT INTO top_500_2019 (name, net_worth19, country, source)
VALUES ('German Larrea Mota Velasco', 13.3, 'Mexico', 'Mining');

-- Insert Guillaume Pousaz into the 2019 table
INSERT INTO top_500_2019 (name, net_worth19, country, source)
VALUES ('Guillaume Pousaz', 0, 'Switzerland', 'Fintech');

-- Insert Qin Yinglin into the 2019 table
INSERT INTO top_500_2019 (name, net_worth19, country, source)
VALUES ('Qin Yinglin', 4.3, 'China', 'Food & Beverage');

-- Insert Changpeng Zhao into the 2019 table
INSERT INTO top_500_2019 (name, net_worth19, country, source)
VALUES ('Changpeng Zhao', 1.2, 'Canada', 'Cryptocurrency');

-- Insert Li Xiting into the 2019 table
INSERT INTO top_500_2019 (name, net_worth19, country, source)
VALUES ('Li Xiting', 5.5, 'Singapore', 'Medical Devices');


-- Create new table with combined net worth and additional column info from 2019 table
CREATE TABLE combined_net AS
SELECT
	top_100_2022.rank,
	top_100_2022.name,
	top_500_2019.net_worth19,
	top_100_2022.net_worth22,
	top_500_2019.source,
	top_500_2019.country
FROM top_100_2022
LEFT JOIN top_500_2019
ON top_100_2022.name = top_500_2019.name
ORDER BY top_100_2022.rank;