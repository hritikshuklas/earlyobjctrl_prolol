#### Preamble ####
# Purpose: Cleans the raw data acquired from Oracle's Elixir
# Author: Hritik Shukla
# Date: 15 April 2024
# Contact: hritik.shukla@utoronto.ca
# License: MIT
# Pre-requisites: Acquire 2023 LoL esports match data from Oracle's Elixir
# Any other information needed? https://oracleselixir.com/tools/downloads

#### Workspace setup ####
library(tidyverse)
library(dplyr)
library(arrow)

#### Clean data ####
raw_data <- read_csv("data/raw_data/2023_LoL_esports_match_data_from_OraclesElixir.csv")

# Using team statistics for major regions in League of Legends eSports
cleaned_data <-
  raw_data |>
  filter(position == "team") |>
  filter(league %in% c("LCS", "LCK", "LEC", "LPL", 
                       "PCS", "VCS", "CBLOL", "LLA")) |>
  select("league","split","teamname","side","result","firstherald","heralds",
         "firstbaron","barons","firstdragon","elementaldrakes", "elders") |>
  drop_na() |>
  mutate(result = ifelse(result == 0, "Loss", "Win"),
         across(all_of(c("firstherald", "firstdragon", "firstbaron")), 
                ~ ifelse(. == 0, "No", "Yes")))
  

#### Save data ####
write_parquet(cleaned_data, "data/analysis_data/cleaned_data.parquet")

