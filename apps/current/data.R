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
  # Select two columnns
  select(`Country name`, `Ladder score`) %>% 
  # Order the dataset by the score descending
  arrange(desc(`Ladder score`)) %>% 
  # Top 10 rows
  head(10)

# Bottom 10 countries by happiness score
df %>% 
  select(`Country name`, `Ladder score`) %>% 
  # Ordering dataset ascending this time
  arrange(`Ladder score`) %>% 
  head(10)

# Top 10 countries by life expectancy
df %>% 
  select(`Country name`, `Healthy life expectancy`) %>% 
  arrange(desc(`Healthy life expectancy`)) %>% 
  head(10)

# Bottom 10 countries by life expectancy
df %>% 
  select(`Country name`, `Healthy life expectancy`) %>% 
  arrange(`Healthy life expectancy`) %>% 
  head(10)

# Plot some charts!
library(plotly)

# Bar chart of countries by happiness score
fig <- df %>% 
  arrange(`Ladder score`) %>% 
  plot_ly(
  x = ~`Country name`, y = ~`Ladder score`,
  name = 'Happiness score',
  type = 'bar'
)

fig
