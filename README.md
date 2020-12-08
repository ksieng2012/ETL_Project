# ETL_Project
ETL_Project Report

For our ETL project we took data from the EIA website to look at electricity data. We gathered three data sets to get good variation for our final database. Our three data sets were supply, demand, and a pricing data set that looked at how electricity price has changed over a 20 year period. The demand and pricing data sets were both csv files, and the supply file was a json. All three of our data sets were all set during the same 20 year time frame, with new data points coming each month. Due to this, we decided to create a final sequel-alchemy data base that shared the same primary key for date_id, so that we could run queries to find electricity data quickly from the different quarters, seasons, months etc across all of our data. 


Part 1. 
First, we took the demand and price data sets and started to import them into our jupyter notebook so we could clean them using python/pandas. The price and demand data sets were similar in how they were built, so we created code that cleaned up both of them seamlessly. We deleted the columns and rows that we did not need, filtered the data set so that it was in descending order to match our external date_id excel sheet, and then renamed our index column as date_id for the final connection in sequal. Once the data frames were cleaned up, we started to create our code to export these data frames into our sequel data base.  


Part 2. KOSAL SECTION HERE


PART 3. SEAN PART ABOUT EXCEL AND SEQUEL


Source: https://www.eia.gov/beta/states/data
