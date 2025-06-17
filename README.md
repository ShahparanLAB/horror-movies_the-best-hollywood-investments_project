# Horror Movies Hollywood Investment Project

## 💻 Tools Used:
![image](https://github.com/user-attachments/assets/7673c57f-5445-461a-b46f-bb9655960afa)

 This project showcases an end-to-end data analytics solution tailored for Hollywood movie investments, leveraging the power of Azure Databricks, Azure Synapse SQL, and Power BI. It emphasizes the development of a modern data pipeline designed to uncover insights into automotive investment trends, profitability patterns, and more.

## 🕒 Data Collection Window: 
This dataset explores Hollywood movie investments from 1940 to 2019, focusing on financial metrics like budgets, grosses, release dates, distributors, ratings, and genres.

## 📊 Technical Overview : 
Utilized Azure Data Factory to orchestrate data pipelines, ingesting raw data into Data Lake Gen2. Leveraged Azure Databricks for data cleaning and transformation, storing refined outputs in a curated Data Lake. Used Azure Synapse Analytics for advanced querying and performance optimization. Finally, visualized insights in Power BI to support data-driven decision-making and business reporting.


##  📽️ Project Insigh: 

Built a Python project to analyze movie financial data using visualizations. Compared worldwide gross with bar charts, explored budget distribution across genres with pie, box, and violin plots, and used heatmaps and histograms to uncover patterns and correlations in revenue metrics.

## 🧭 Project Kickoff
![1_IcFw74V4sykkJGThPiegIA](https://github.com/user-attachments/assets/e7e2f701-bb69-46e8-b449-358d447cef1d)

1️⃣ Upload Data
* Store raw CSV files in Azure Blob Storage or Azure Data Lake Gen2.
  
2️⃣ Process Data in Databricks
* Use PySpark or SQL transformations to clean and prepare the data.
  
3️⃣ Load Data into Synapse SQL
* Store cleaned data in Azure Synapse Analytics for fast querying.

4️⃣ Analyze and Visualize in Power BI
* Connect Synapse SQL to Power BI dashboards for real-time insights.


# 🌐 Cloud Ecosystem
## Azure Databricks → Data ingestion, ETL, and exploratory analysis

## 📡 PySpark Identity Configuration
The following PySpark code sets up OAuth 2.0 to enable secure access to Azure Data Lake in a Databricks environment.

spark.conf.set("fs.azure.account.auth.type.<storage-account>.dfs.core.windows.net", "OAuth")
spark.conf.set("fs.azure.account.oauth.provider.type.<storage-account>.dfs.core.windows.net", 
               "org.apache.hadoop.fs.azurebfs.oauth2.ClientCredsTokenProvider")
spark.conf.set("fs.azure.account.oauth2.client.id.<storage-account>.dfs.core.windows.net", "<client-id>")
spark.conf.set("fs.azure.account.oauth2.client.secret.<storage-account>.dfs.core.windows.net", "<client-secret>")
spark.conf.set("fs.azure.account.oauth2.client.endpoint.<storage-account>.dfs.core.windows.net", "<oauth2-token-endpoint>")

## 🔐 Authentication Setup Details
- Auth Type: OAuth 2.0 via Azure Active Directory
- Provider: Client Credentials Token Provider
- Credentials: Securely uses Client ID and Secret
- Endpoint: Connects through Azure OAuth URL
- Purpose: Enables Databricks to access Azure Data Lake securely without exposing credentials in the code

# 🗂️ Access Control Setup for Azure Storage in Databricks
### Here’s a sample PySpark setup for authenticating access to Azure Data Lake Storage from Databricks.

Establish authentication by specifying the storage account key in the following format:
spark.conf.set("fs.azure.account.key.carsalesreport.dfs.core.windows.net", "<YOUR_ACCOUNT_KEY>")

This code snippet sets Spark parameters using the Azure Storage account key to establish secure connectivity with the movies Investment report Data Lake.
It enables seamless read/write operations in Databricks, ensuring efficient data handling across analytics pipelines.
🔍 Configuration Highlights
•	✅ Direct Access via Storage Key – Connects Databricks securely to Azure Data Lake
•	✅ Enables High-Volume Read/Write – Optimized for PySpark-based data engineering
•	✅ Integrated with Synapse SQL & Power BI – Smooth data flow for analytics and reporting

# 📥 PySpark Load Process from Azure Storage
 Use the following PySpark code to ingest raw horror movies investment data from Azure Blob Storage into Databricks.
### 💾 Data 
![image](https://github.com/user-attachments/assets/62f02bb2-42f3-4076-9a25-01802efa492b)

# Data Cleaning
![image](https://github.com/user-attachments/assets/a21108b9-082a-42bd-bce1-141f2a471823)
![image](https://github.com/user-attachments/assets/893797c9-0b87-4d82-a652-776ff173db90)
![image](https://github.com/user-attachments/assets/d5c6c1e7-d34e-4970-a74d-eb274fa540cb)
![image](https://github.com/user-attachments/assets/c69e8e08-4d09-403b-84a0-2ed11cf8b522)
![image](https://github.com/user-attachments/assets/0f617b49-980a-4cf8-b706-a8d675988d80)
![image](https://github.com/user-attachments/assets/60e03a79-e93e-4178-beb5-b5e173c1d61f)


## 1. Bar Chart – Compare the worldwide gross of each movie.

This bar chart compares the worldwide gross revenue of seven popular movies. It shows that Jurassic World: Fallen Kingdom and Minions earned the most
globally, while Watchmen had the lowest worldwide gross among the selected films. The chart provides a clear visual comparison of each movie's financial success at the global box office.
![image](https://github.com/user-attachments/assets/8d4b20b3-942a-4d6d-b7a9-ffd4e05bc84c)

## 2. Pie Chart – Production Budget Distribution Across Genres.

The chart shows how budget allocations vary among genres like Action, Adventure, Comedy, Drama, and Horror, using different colors for clarity. 
This visualization provides insights into which genres receive the highest and lowest budgets in the film industry. 🚀

![image](https://github.com/user-attachments/assets/27ec5917-a688-475e-a31d-ac135d23ecd5)

## 3. Heatmap – Correlation Between Financial Metrics.

Created a pie chart to visualize the distribution of production budgets across different movie genres using Python.
The chart represents Action, Adventure, Comedy, Drama, and Horror genres, each with a distinct color and percentage. 
This analysis helps understand how budget allocations vary among different types of films, offering insights into industry spending trends. 

![image](https://github.com/user-attachments/assets/cb224419-6390-4647-942a-1cc763e3de70)

## 4. Histogram – Distribution of Worldwide Gross Earnings.

This histogram, created using matplotlib, illustrates the distribution of worldwide gross earnings. The code extracts earnings data and visualizes 
it with 15 bins, using green bars with red edges for clarity. The x-axis represents different gross earnings ranges, while the y-axis shows the frequency of occurrences within each range.

![image](https://github.com/user-attachments/assets/66c2908e-0c1b-4f8b-b9ad-6c407635d25f)


## 5. Box Plot – Budget Distribution Across Movie Genres.

This boxplot visualization, created using Seaborn and Matplotlib, offers a compelling comparison of production budgets across various movie genres. By illustrating the budget distributions for Comedy, Action, Adventure, Drama, and Horror films, the chart provides valuable insights into how financial resources are allocated within the film industry.
![image](https://github.com/user-attachments/assets/7d25b353-28af-4cf3-9911-a4c3928fa766)


## 6. Violin Plot – Budget Spread Among Genres.

This analysis presents a comparative visualization of production budgets across various movie genres using Seaborn and Matplotlib. By leveraging boxplots, the study highlights budget distributions for Comedy, Action, Adventure, Drama, and Horror films, offering insights into financial allocation trends within the film industry. The findings provide a clear perspective on budget variations, helping to understand how different genres are financed and produced.
![image](https://github.com/user-attachments/assets/911783b2-5d97-4148-aae7-def6e5622df2)

Developed a data-driven Python project to explore movie financials through visual storytelling. Created bar charts to compare worldwide gross per movie and pie charts to illustrate production budget distribution across genres. Used heatmaps to reveal correlations between key financial metrics and histograms to analyze the spread of gross earnings. Enhanced insights further with box plots and violin plots to examine budget patterns and genre-specific distributions.

# Azure Snyape analytaic_SQL Project 

### Executed SQL queries on the [moviedata] table to analyze budgets, box office performance, genres, and distributors. Extracted key insights like top-grossing films, profitability, and yearly trends—demonstrating strong data analysis skills for business intelligence in the film industry.

![Top10](https://github.com/user-attachments/assets/5c0d29fc-5827-4042-9b2f-40ab3e174b2f)


![Screenshot 2025-06-01 143908](https://github.com/user-attachments/assets/a5ae4b72-caf2-4dfe-b1bd-0b5d9986547d)


![Scatter](https://github.com/user-attachments/assets/02436fbf-827e-4779-9efa-4ebe052174fd)


![MapRating](https://github.com/user-attachments/assets/ade7d6ab-2463-40ad-9a86-ee8f95206fd7)


![Area_Chart](https://github.com/user-attachments/assets/618597d7-49b7-4068-ac0c-2d537565c2a1)


![SQL script 2](https://github.com/user-attachments/assets/a6f5a61a-ef2e-465b-9889-f6f0c859b064)


![image](https://github.com/user-attachments/assets/41f43033-392c-4763-8947-6d5f03e22c80)


![image](https://github.com/user-attachments/assets/30522e93-950e-4155-85e2-d84a3dbab6b8)


![image](https://github.com/user-attachments/assets/9f1e5907-9cc3-4961-8a06-880e3c78629b)


![image](https://github.com/user-attachments/assets/479c0d56-4336-4e2b-ac51-b12aba0c6274)


![image](https://github.com/user-attachments/assets/b9f25bd4-4ffd-4a66-a45c-dd966b102e6d)


![image](https://github.com/user-attachments/assets/358ac376-07b1-4743-a4c8-439d2d8aadc0)


![image](https://github.com/user-attachments/assets/58e19752-a6b6-4a8a-82fb-1f05a6ab1c47)


![image](https://github.com/user-attachments/assets/01db4777-f933-467e-9155-8b5ccad263b9)


![image](https://github.com/user-attachments/assets/8cbe3c63-3a09-49c3-9823-5441dd63c690)

We performed a series of insightful SQL queries on a movie dataset from the [HorrorMovieDB].[dbo].[moviedata] table to analyze production budgets, box office performance, genre trends, and distributor impact. Key highlights include identifying top-grossing films, evaluating profitability, filtering data by ratings and genres, and summarizing metrics by year and distributor. These queries demonstrate practical data extraction, aggregation, and optimization skills that support business intelligence and decision-making in the entertainment industry.




# PowerBI Project Name: Horror Movies Hollywood Investments Project

## 📘 Project Overview & Key Highlights
Time Period: 1936 to 2019
Scope: This project focuses on analyzing the financial performance of horror movies compared to other genres in Hollywood. 
It covers total and average revenues, production budgets, MPAA rating influences, genre-wise distributions, and monthly gross trends.
________________________________________
🔑 Key Highlights
1.	🎬 Time Span:
2.	💰 Total Financials:
3.	📊 Averages per Movie:
4.	🎥 Genres Covered:
5.	🏷 MPAA Ratings Breakdown:
6.	📅 Monthly Trends:
________________________________________

![Horror movies hollywood Investment project pbix](https://github.com/user-attachments/assets/149e4222-3c91-482e-81fd-944adc1ec5d4)


📘Conclusion
The Horror Movies Hollywood Investments Project demonstrates the high return-on-investment (ROI) potential of horror films in the Hollywood industry. With only 10 billion USD in total budget, horror films achieved a domestic gross of 69.89 billion USD, rivaling higher-budget genres like Action (65.82bn) and Drama (70.85bn).
Despite having the lowest production allocation, horror films captured over 22.5% of total domestic gross, showcasing their financial efficiency and audience popularity.
In contrast, genres like Action (84bn) and Drama (54bn) required significantly higher budgets to achieve similar or only slightly better gross outcomes, revealing a case of diminishing returns on higher investments.
The MPAA rating analysis further supports strategic planning. PG-13 rated films generated the highest total revenue, likely due to their broader audience reach. Meanwhile, R-rated films, typical for horror, maintained strong performance, proving that age restrictions do not always reduce profitability if targeted correctly.
Additionally, the monthly performance chart shows a spike in both domestic and worldwide gross during mid-year releases, suggesting seasonal timing is crucial to maximizing revenue.

------------------------------------------------------------------------------------END---------------------------------------------------------------------------------------------------

     
   # Overview of the Azure Work Environment
   ## An End-to-End Azure Data Engineering Project 
   ### Architectural Overview
   This architectural overview encapsulates our approach in this data engineering project, emphasizing the role of Azure services in processing and analyzing job market data. The      architecture is designed to ensure that the data pipeline is efficient, secure, and capable of handling the extensive and evolving requirements of job market analysis.
    
   ![Pipline](https://github.com/user-attachments/assets/556d52c6-c231-41fb-8aa6-5180922ca3c5)


  ## Data Ingestion (Azure Data Factory):
  ![image](https://github.com/user-attachments/assets/a22503d9-8f6f-461f-ab3f-16b1c128ad1d)
   Azure Data Factory acts as our platform for data ingestion, enabling the collection of job-related data from diverse sources.
   Its connectors and scheduling capabilities ensure timely and automated ingestion of data into our pipeline.

  ## Data Storage (Azure Data Lake Gen2): 
  ![image](https://github.com/user-attachments/assets/396bb47b-f082-49ad-a14c-cecb92e3c3f7)
   The ingested data is stored in Azure Data Lake Gen2, providing scalable, secure, and cost-effective storage solutions. This is essential for
   managing the large volume of job market data efficiently

  ## Data Transformation (Azure Databricks): 
  ![image](https://github.com/user-attachments/assets/6606a513-1be8-4769-9378-e5a117cb268b)
  Utilize Azure Databricks for robust data transformation. This includes cleansing, normalizing, and enriching the data, preparing 
  it for detailed analysis by optimizing the data structure and quality.

 ## Data Modeling (Azure Synapse Analytics): 
 ![image](https://github.com/user-attachments/assets/4cec06e5-393b-4b00-ae0b-6ae6b6d5292e)
 Azure Synapse Analytics is used for data modeling and analytics. Here,I build comprehensive data models and perform complex SQL-based queries 
 and analytics to extract insights ifno based on requirements.

 ## Data Visualization (Power BI): 
 ![image](https://github.com/user-attachments/assets/e82e55fd-44d0-4a39-9c39-fbd8ad154649)
 Power BI enables us to create interactive dashboards and reports that visually represent the job market insights. This tool helps stakeholders understand 
 the dynamics of job availability, company growth trends, and required professional skills.

 



