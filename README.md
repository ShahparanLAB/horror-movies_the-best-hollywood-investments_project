# Horror Movies Data Analysis Project

###Configuration part  
from pyspark.sql.functions import col
from pyspark.sql.types import IntegerType, DoubleType, BooleanType, DateType

# Set up the OAuth 2.0 configuration for Azure Data Lake
spark.conf.set("fs.azure.account.auth.type.startupgrowthdata.dfs.core.windows.net", "OAuth")
spark.conf.set("fs.azure.account.oauth.provider.type.startupgrowthdata.dfs.core.windows.net", 
               "org.apache.hadoop.fs.azurebfs.oauth2.ClientCredsTokenProvider")
spark.conf.set("fs.azure.account.oauth2.client.id.startupgrowthdata.dfs.core.windows.net", 
               "6418cabe-3966-4715-8bcd-478880ed64db3b4")
spark.conf.set("fs.azure.account.oauth2.client.secret.startupgrowthdata.dfs.core.windows.net", 
               "tmk8Q~-u_nNfHrBgBXA1074VNTGFbjA9Lt_LeeLyauF")
spark.conf.set("fs.azure.account.oauth2.client.endpoint.startupgrowthdata.dfs.core.windows.net", 
               "https://login.microsoftonline.com/13d413e5-9b6a-46dd-a54726585-6e6d4c6e36b7/oauth2/token")

##1. Bar Chart – Compare the worldwide gross of each movie
This bar chart compares the worldwide gross revenue of seven popular movies. It shows that Jurassic World: Fallen Kingdom and Minions earned the most globally, while Watchmen had the lowest worldwide gross among the selected films. The chart provides a clear visual comparison of each movie's financial success at the global box office.
![image](https://github.com/user-attachments/assets/8d4b20b3-942a-4d6d-b7a9-ffd4e05bc84c)
