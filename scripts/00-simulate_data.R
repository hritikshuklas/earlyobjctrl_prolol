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
  result = sample(c("Win", "Loss"), size = num_obs, replace = TRUE),
  firstherald = sample(c("Yes", "No"), size = num_obs, replace = TRUE),
  firstdragon = sample(c("Yes", "No"), size = num_obs, replace = TRUE),
  firstbaron = sample(c("Yes", "No"), size = num_obs, replace = TRUE),
)



