#### Preamble ####
# Purpose: Simulates match data for league of legends games
# Author: Hritik Shukla
# Date: 15 April 2024
# Contact: hritik.shukla@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)

#### Workspace setup ####
set.seed(853)

num_obs <- 100

#### Simulate data wotj####
sim_match_data <- tibble(
  result = sample(0:1, size = num_obs, replace = TRUE),
  firstherald = sample(0:1, size = num_obs, replace = TRUE),
  heralds = sample(0:2, size = num_obs, replace = TRUE),
  firstdragon = sample(0:1, size = num_obs, replace = TRUE),
  dragons = sample(0:4, size = num_obs, replace = TRUE),
  firstbaron = sample(0:1, size = num_obs, replace = TRUE),
  barons = sample(0:3, size = num_obs, replace = TRUE),
  elders = sample(0:3, size = num_obs, replace = TRUE),
)



