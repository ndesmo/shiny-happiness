# Tidy handling of data in R
library(tidyverse)

# Load the 2020 happiness dataset
df <- read_csv('data/2020.csv')

# See what the data looks like
View(df)

# Look at first values for each column
glimpse(df)

# Country with the highest happiness score
df %>% colnames

# Top 10 countries by happiness score
df %>% 
  select(`Country name`, `Ladder score`) %>% 
  arrange(desc(`Ladder score`)) %>% 
  head(10)

# Bottom 10 countries by happiness score
df %>% 
  select(`Country name`, `Ladder score`) %>% 
  arrange(`Ladder score`) %>% 
  head(10)