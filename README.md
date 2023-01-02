# Billionaires
A look into the to top 100 billionaires world-wide

# EXTRACT


# TRANSFORM


# LOAD


# ANALYSIS
Once I had the data pre-cleaned and loaded into pgAdmin, I decided to take a look at how the net worths compared from 2019 to 2022.  For this I joined the two tables using an inner join to only capture the billionaires who are in the top 100 currently.  After joining, and seeing that I only had 72 billionaires in my joined table, I realized that there were inconsistencies in naming between the two datasets.  In the spirit of SQL practice and to mimic if the database was my only source of truth, I made the updates in pgAdmin to the tables so that my data would match across tables.

Here I ran into a bit of an issue.  Michael Bloomberg, listed as #12 in 2022 was not in the 2019 dataset.  Finding this strange, I did some research and found out that his 2019 net worth was $55.5 billion (https://en.wikipedia.org/wiki/The_World%27s_Billionaires#2019), more than enough to have him on the list.  I added him to the 2019 table without a rank number, as only the 2022 rankings are relevant for this project.  

Zhong Shanshan was also not on this list.  But not because he was forgotten, but because he wasn't even on the top 500 list in 2019 (https://www.forbes.com/profile/zhong-shanshan/?sh=6b43bb9949ae).  I also added him to the list.

Julia Koch inherited her wealth from her husband David Koch, who is on the 2019 list, when he died in 2019.  Since it is the same money, I added her to the 2019 list as well.

Zhang Yiming, the founder of the company that created TikTok (https://www.forbes.com/profile/zhang-yiming/?sh=410dd7ce1993), was also missing from the 2019 list.  I added him to the 2019 table as well.

Rodolphe Saade, a shipping magnate (https://www.forbes.com/profile/rodolphe-saade/?sh=3224fd903c69) was also missing and added.

Ma Huateng is also known as Pony Ma so the name was updated in the 2019 table.

Miriam Adelson is the widow of Sheldon Adelson, who is on the 2019 table.  I added her for the same reason I added Julia Koch.

Jeff Yass was a bit of an enigma.  I wasn't able to find any 2019 data on him as he has been a bit secretive until fairly recently.  The earliest I could find was early 2020 in an article by Forbes (https://www.forbes.com/sites/michelatindera/2021/04/16/this-secretive-billionaire-is-one-of-americas-biggest-conservative-donors/?sh=499cdc867f45) that mentioned he was worth about $12 Billion.  He is heavily invested in political donations to Republican super PACs. 

Low Tuck Kwang wasn't even on the top 500 billionaires in 2019 (https://www.forbes.com/profile/low-tuck-kwong/?sh=761d2d0f7e2e), but shot up to number 48 in 2022 after a significant dip in 2020 and 2021.

MacKenzie Scott was married to Jeff Bezos in 2019 and has since divorced.  I added her to the 2019 dataset with the amount that Bloomberg reported she was worth in 2019 (https://www.bloomberg.com/billionaires/profiles/mackenzie-scott/?leadSource=uverify%20wall).

German Larrea Mota Velasco wasn't on the 2019 list of top billionaires, but his mother, Sara Mota de Larrea was.  I am not sure if he was lumped under her as her family, but I added him to the dataset with Forbes' 2019 net worth total (https://www.forbes.com/profile/german-larrea-mota-velasco/?sh=2651fd392c01).

Guillaume Pousaz is the founder of checkout.com, an online payment processing fintech company.  Forbes notes that Pousaz directly benefitted from the pandemic in that online payment processing volume tripled (https://www.forbes.com/profile/guillaume-pousaz/?sh=928dd4f2652e).  The earliest net worth Forbes has listed is $9 Billion in 2021.  As this implies that he did not hit the billionaires list until after 2019, I have added him to the 2019 list at $0 Billion.

Qin Yinglin wasn't on the 2019 billionaires list for unknown reasons.  Forbes lists him with a net worth of $4.3 Billion in 2019 (https://www.forbes.com/profile/qin-yinglin/?sh=2aa7d1ac6365).

Changpeng Zhao didn't make the top 500 billionaires in 2019 at $1.2 Billion.  As of the date the dataset was pulled (12/26/22), cryptocurrency has put him at number 94.  Due to the current upheaval of crypto currency, at the date of this data cleaning (1/2/23), he is back down to the bottom of the top 500 (https://www.forbes.com/profile/changpeng-zhao/?sh=4955912f6277).

Li Xiting was not listed on the 2019 list of billionaires for 2019.  Forbes lists his net worth at $5.5 billion. He owns Shenzhen Mindray Bio-Medical Electronics (https://www.forbes.com/profile/li-xiting/?sh=471e347b6ab7).

