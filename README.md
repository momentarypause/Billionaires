# Billionaires
A look into the to top 100 billionaires world-wide

# EXTRACT


# TRANSFORM


# LOAD


# ANALYSIS
Once I had the data cleaned and loaded into pgAdmin, I decided to take a look at how the net worths compared from 2019 to 2022.  For this I joined the two tables using an inner join to only capture the billionaires who are in the top 100 currently.  After joining, and seeing that I only had 72 billionaires in my joined table, I realized that there were inconsistencies in naming between the two datasets.  In the spirit of SQL practice and to mimic if the database was my only source of truth, I made the updates in pgAdmin to the tables so that my data would match across tables.

Here I ran into a bit of an issue.  Michael Bloomberg, listed as #12 in 2022 was not in the 2019 dataset.  Finding this strange, I did some research and found out that his 2019 net worth was $55.5 billion (https://en.wikipedia.org/wiki/The_World%27s_Billionaires#2019), more than enough to have him on the list.  I added him to the 2019 table without a rank number, as only the 2022 rankings are relevant for this project.  

Zhong Shanshan was also not on this list.  But not because he was forgotten, but because he wasn't even on the top 500 list in 2019 (https://www.forbes.com/profile/zhong-shanshan/?sh=6b43bb9949ae).  I also added him to the list.

Julia Koch inherited her wealth from her husband David Koch, who is on the 2019 list, when he died in 2019.  Since it is the same money, I added her to the 2019 list as well.

Zhang Yiming, the founder of the company that created TikTok (https://www.forbes.com/profile/zhang-yiming/?sh=410dd7ce1993), was also missing from the 2019 list.  I added him to the 2019 table as well.

Rodolphe Saade, a shipping magnate (https://www.forbes.com/profile/rodolphe-saade/?sh=3224fd903c69) was also missing and added.

Ma Huateng is also known as Pony Ma so the name was updated in the 2019 table.

Miriam Adelson is the widow of Sheldon Adelson, who is on the 2019 table.  I added her for the same reason I added Julia Koch.

Jeff Yass was a bit of an enigma.  I wasn't able to find any 2019 data on him as he has been a bit secretive until fairly recently.  The earliest I could find was early 202o in an article by Forbes that mentioned he was worth about $12 Billion.  He is heavily invested in political donations to Republican super PACs. 
