#### Newcomer services Dedicated to Youth in Toronto ####
# Purpose:
# Author: Flavia López-Czischke
# Contact: flavia.a.lopez@gmail.com
# Date: 29 January 2021


#### Workspace set-up ####
library(tidyverse)
library(opendatatoronto)
library(janitor)
library(here)

### Getting my data ###
all_TO_data <-
  opendatatoronto::search_packages("Newcomer") %>%
  opendatatoronto::list_package_resources() %>%
  select(id) %>% #only one row was displayed so I didn't need to run 'filter'
  get_resource()

### Saved the raw data ####
write_csv(all_TO_data, "inputs/data/raw_data.csv")
