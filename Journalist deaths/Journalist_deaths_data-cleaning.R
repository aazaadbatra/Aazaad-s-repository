library(tidyverse)
library(lubridate)

#Loading the data and creating a data frame
journalist_deaths_df <- read_csv('C:/Users/garim/Desktop/Google Business Analytics Professional Certification/Case-study/01_Journalist-deaths_01.csv')

#Viewing the first 6 observations
head(journalist_deaths_df)

glimpse(journalist_deaths_df)

#Correcting date format
journalist_deaths_df$Date2 <- mdy(journalist_deaths_df$Date)

journalist_deaths_df

#Viewing names of all columns
colnames(journalist_deaths_df)

#Dropping the initial Date column
journalist_deaths_df_new <- subset(journalist_deaths_df, select = -Date)

#Creating a column for year
mutate(journalist_deaths_df_new, Year = format(Date2, format = "%Y"))

journalist_deaths_df_new1 <- mutate(journalist_deaths_df_new, Year = format(Date2, format = "%Y"))
journalist_deaths_df_new1

write.csv(journalist_deaths_df_new1,"C:/Users/garim/Desktop/Google Business Analytics Professional Certification/Case-study/Journalist_deaths_cleaned.csv", row.names = FALSE)