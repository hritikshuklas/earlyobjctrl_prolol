#### Preamble ####
# Purpose: Tests cleaned data from Oracle's Elixir
# Author: Hritik Shukla
# Date: 15 April 2024
# Contact: hritik.shukla@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
library(arrow)

#### Test data ####
analysis_data = read_parquet("data/analysis_data/cleaned_data.parquet")

stopifnot(
  !(any(is.null(analysis_data))),
  !(any(is.na(analysis_data))),
  all(analysis_data$result %in% c("Win", "Loss")),
  all(analysis_data$firstherald %in% c("No", "Yes")),
  all(analysis_data$firstbaron %in% c("No", "Yes")),
  all(analysis_data$firstdragon %in% c("No", "Yes")),
  all(between(analysis_data$elementaldrakes, 0, 4)),
  all(between(analysis_data$heralds, 0, 2)),
  all(analysis_data$league %in% c("LCS", "LCK", "LEC", "LPL", 
                                      "PCS", "VCS", "CBLOL", "LLA"))
)

