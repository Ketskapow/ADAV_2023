library(tidyverse)
library(magrittr)

#load in data and remove index column
data <- read_csv("merged_data_cleaned.csv") %>% 
  select(-1)

#remove data point with 0 cup score
data %<>% 
  filter(Total.Cup.Points != 0)

#histogram of total cup score
hist(data$Total.Cup.Points, breaks = 50)
