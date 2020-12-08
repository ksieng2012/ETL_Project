# ETL_Project
ETL_Project Report by Kosal Sieng, Sean Istre, and Carter Alvarez

For our ETL project we took data from the EIA website to look at electricity data. We gathered three data sets to get good variation for our final database. Our three data sets were the supply, demand, and a pricing information about electricity usage in the United States across 3 sectors: residential, commercial, and industrial. The demand and pricing data sets were both csv files, and the supply file was a json. All three of our data sets were all set during the same 20 year time frame, with new data points coming each month. Due to this, we decided to create a final sequel-alchemy data base that shared the same primary key for date_id, so that we could run queries to find electricity data quickly from the different quarters, seasons, months etc across all of our data. 


Part 1. 
First, we took the demand and price data sets and started to import them into our jupyter notebook so we could clean them using python/pandas. We did this by reading the csv files we downloaded into the notebook using pandas. The price and demand data sets were similar in how they were built, so we created code that cleaned up both of them seamlessly. We deleted the columns and rows that we did not need, as there was about 6 rows of heading that was useless for the data base, and 3 rows of extra columns that restated identifications. We then ran a line of code that filtered the data set so that it was in descending order based on date, to match our external date_id excel sheet, and then renamed our index column as date_id for the final connection in sequal. Once the data frames were cleaned up, we started to create our code to export these data frames into our sequel data base.  


Part 2. Energy sources were downloaded in a ".Json" file. The Json files content numerous datas that needed to be cleaned up. First, json file was loaded to the jupyter notebook using "json.load". After inspecting the strings, the data is saperated into 12 data sets that content information about each data source. "s.find" and "s.rfind" are used to extract the name of the energy source from the string. Two "for loop" are used to create DataFrames for each source and joint all energy sources into one big dataFrame. Then, we need to clean up dataFrames, by rename, reset index and set index key that will be transfered to the postgres DataBased.


PART 3. SEAN PART ABOUT EXCEL AND SEQUEL


Source: https://www.eia.gov/beta/states/data
