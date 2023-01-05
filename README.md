
![360_F_57261675_u0WMxmIfm9dr4KBCQoW0eZgNMeikGZR0](https://user-images.githubusercontent.com/102555125/210870504-87393e88-8b77-451e-a57f-5cde6c77aa71.jpg)

# Billionaires
A look into the to top 100 billionaires world-wide compared to their net worth in 2019.  I am hoping to shed some light on billionaires who may have profited off the pandemic

# Data Sources
[Top 100 Billionaires List (Kaggle)](https://www.kaggle.com/datasets/devrimtuner/top-50-billionaires-list?resource=download)

[World Top 500 Billionaires 2019](https://stats.areppim.com/listes/list_billionairesx19xwor.htm)

# Initial Data Cleaning
The initial data cleaning was completed in Jupyter Notebook using Python and the Pandas library. 
## 2019 Billionaires Dataset
 As I was not able to find an archived version of the Forbes or Bloomberg billionaires listing for 2019, I scraped the website listed above that cited the Bloomberg World Top 500 Billionaires Index as its source.
 - Converted it to a dataframe using the same column headings as the 2022 dataset and the rank column as the index
 - The site lists that the data was current as of March 8, 2019.  
 - Dropped the last 4 rows of the dataframe as it included data like totals, averages, and medians for the entire set of 500 billionaires
 - Dropped the Year to Date columns as that also wasn't relevant.  
 - I kept the columns with name, net worth, country, and source of wealth.  
 - Converted the Net Worth column to numeric float values, as it originally came in as object type
 - Checked for null values (there were none) 
## 2022 Billionaires Dataset
I obtained the 2022 dataset from Kaggle as a csv download.
- Read this into Jupyter Notebook as a dataframe using the rank column as the index.  
- Checked for null values
- The net worth column included characters (dollar signs and "B" for billions) that would make it difficult to analyze
    - Converted the values in this column to string so I could strip these characters and be left with numerical data
        - Used a lambda function and lstrip()/rstrip() to remove non-numeric characters
- Used Pandas to_numeric() to convert the values to the same datatype as the other dataset

# Database Creation
Using pgAdmin4, I created a database called Billionaires and then two tables called "top_100_2022" and "top_500_2019."  This allowed me to import the two csv files created from the dataframes in Jupyter Notebook.

# Further Cleaning in pgAdmin4
Once I had the data pre-cleaned and loaded into pgAdmin, I decided to take a look at how the net worths compared from 2019 to 2022.  For this I joined the two tables using an inner join to only capture the billionaires who are in the top 100 currently.  After joining, and seeing that I only had 72 billionaires in my joined table, I realized that there were inconsistencies in naming between the two datasets.  I made the updates in pgAdmin4 to the tables to maintain the integrity of my original data files.

Here I ran into two issues:  
1. There were thirteen names that matched, but were spelled a bit differently.  For those cases, I was able to search the dataset for name differences and then alter the 2019 table to match the 2022 dataset so that the join would pick up the data in the row.  
2. There were fifteen 2022 billionaire missing completely from the 2019 dataset. I had to do some digging to make sure they didn't have an alias, find out how much their net worth was in 2019, and then add them to the 2019 dataset so it could pull the net worth over to my combined table.  I left off rank number as only the 2022 rankings are relevant for this project and I didn't want to reconfigure the rankings of the existing dataset.  The code used to both alter names and add billionaires are found in the document named SQL_table_updates (NEED LINK) in this repository.  

## Billionaires added to the 2019 dataset

- [Michael Bloomberg](https://en.wikipedia.org/wiki/The_World%27s_Billionaires#2019), listed as #12 in 2022 was not in the 2019 dataset.  Finding this strange, I did some research and found out that his 2019 net worth was $55.5 billion, more than enough to have him on the list.  I am still not certain why he wasn't listed.   

- [Zhong Shanshan](https://www.forbes.com/profile/zhong-shanshan/?sh=6b43bb9949ae) was also not on this list, not because he was forgotten, but because he wasn't even on the top 500 list in 2019.

- [Julia Koch](https://www.forbes.com/profile/julia-koch/?sh=224dab2f2b9c) inherited her wealth from her husband David Koch, who is on the 2019 list, when he died in 2019.  Since it is the same money, I added her to the 2019 list as well.

- [Zhang Yiming](https://www.forbes.com/profile/zhang-yiming/?sh=410dd7ce1993), the founder of the company that created TikTok, missing for unknown reasons.

- [Rodolphe Saade](https://www.forbes.com/profile/rodolphe-saade/?sh=3224fd903c69), a shipping magnate, missing for unknown reasons.

- [Ma Huateng](https://www.forbes.com/profile/ma-huateng/?sh=61ee575f5437) is also known as "Pony Ma" so the name was updated in the 2019 table.

- [Miriam Adelson](https://www.forbes.com/profile/miriam-adelson/?sh=71ed7a69c405) is the widow of Sheldon Adelson, who is on the 2019 table.  I added her for the same reason I added Julia Koch.

- [Jeff Yass](https://www.forbes.com/sites/michelatindera/2021/04/16/this-secretive-billionaire-is-one-of-americas-biggest-conservative-donors/?sh=499cdc867f45) was a bit of an enigma.  I wasn't able to find any 2019 data on him as he has been a bit secretive until fairly recently.  The earliest I could find was early 2020 in an article by Forbes that mentioned he was worth about $12 Billion.  He is heavily invested in political donations to Republican super PACs. 

- [Low Tuck Kwang](https://www.forbes.com/profile/low-tuck-kwong/?sh=761d2d0f7e2e) wasn't even on the top 500 billionaires in 2019, but shot up to number 48 in 2022 after a significant dip in 2020 and 2021.

- [MacKenzie Scott](https://www.bloomberg.com/billionaires/profiles/mackenzie-scott/?leadSource=uverify%20wall) was married to Jeff Bezos in 2019 and has since divorced.  I added her to the 2019 dataset with the amount that Bloomberg reported she was worth in 2019.

- [German Larrea Mota Velasco](https://www.forbes.com/profile/german-larrea-mota-velasco/?sh=2651fd392c01) wasn't on the 2019 list of top billionaires, but his mother, Sara Mota de Larrea was.  I am not sure if he was lumped under her as her family, but I added him to the dataset with Forbes' 2019 net worth total.

- [Guillaume Pousaz](https://www.forbes.com/profile/guillaume-pousaz/?sh=928dd4f2652e) is the founder of checkout.com, an online payment processing fintech company.  Forbes notes that Pousaz directly benefitted from the pandemic in that his online payment processing volume tripled.  The earliest net worth Forbes has listed is $9 Billion in 2021.  As information in the profile implies that he did not hit the billionaires list until after 2019, I have added him to the 2019 list at $0 Billion.

- [Qin Yinglin](https://www.forbes.com/profile/qin-yinglin/?sh=2aa7d1ac6365) wasn't on the 2019 billionaires list for unknown reasons.  Forbes lists him with a net worth of $4.3 Billion in 2019.

- [Changpeng Zhao](https://www.forbes.com/profile/changpeng-zhao/?sh=4955912f6277) didn't make the top 500 billionaires in 2019 at $1.2 Billion.  As of the date the dataset was pulled (12/26/22), cryptocurrency has put him at number 94.  Due to the current upheaval of cryptocurrency, at the date of this data cleaning (1/2/23), he is back down to the bottom of the top 500.

- [Li Xiting](https://www.forbes.com/profile/li-xiting/?sh=471e347b6ab7) was not listed on the 2019 list of billionaires for 2019.  Forbes lists his net worth at $5.5 billion. He owns Shenzhen Mindray Bio-Medical Electronics.

## Source Cleaning
Once I had a table with the top 100 billionaires of 2022 that also included their net worth from 2019, I took a look at the source column.  It will also be interesting to take a look at the different categories of wealth origins to see some analysis based on source. I also knew that I would need to alter some of the source values for billionaires I added to the 2019 table to maintain consistency and make sure they fit into the existing categories.  In hind sight, I should have explored this first so that I could have used consistent categories to begin with. I altered the tables, changing things like "Medical Devices" to the "Healthcare" category and "Mining" and "Coal" to the "Industrial" category.

## Visualizations
Once I was confident in the consistency of the combined table of the top 100 billionaires of 2022, I exported it to an Excel csv file and loaded it into Tableau.

