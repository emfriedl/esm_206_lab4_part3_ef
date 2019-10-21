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
  
  
  