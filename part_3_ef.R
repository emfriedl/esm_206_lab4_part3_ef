#------------------------
# Emma
#------------------------

#attach packages
library(tidyverse)
library(janitor)
library(here)

#read in data:
disease_burden <- read_csv(here("data", "disease_burden.csv")) %>% 
#clean column names
  clean_names() %>% 
  rename(deaths_per_100k = death_rate_per_100_000)

#create a subset, then graph
db_sub <- disease_burden %>% 
  filter(country_name %in% c("Afghanistan", "United States", "Japan", "Somalia")) %>% 
  filter(age_group == "0-6 days", sex == "Both")

#create basic line graph
ggplot(db_sub, aes(x = year, y = deaths_per_100k)) +
  geom_line(aes(color = country_name))
  
  
  