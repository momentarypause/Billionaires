SELECT * 
FROM top_100_2022

-- Join 2019 and 2020 to see net worth comparison
SELECT top_100_2022.rank,
	top_100_2022.name,
	top_500_2019.net_worth19,
	top_100_2022.net_worth22
FROM top_100_2022
LEFT JOIN top_500_2019
ON top_100_2022.name = top_500_2019.name
ORDER BY top_100_2022.rank;