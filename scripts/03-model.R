#### Preamble ####
# Purpose: Models voter preference as an outcome of generation and gender
# Author: Hritik Shukla
# Date: 12 March 2024 
# Contact: hritik.shukla@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
library(rstanarm)
library(arrow)
library(modelsummary)

#### Read data ####
analysis_data <- read_parquet("data/analysis_data/cleaned_data.parquet")

set.seed(853)

### Convert Boolean Variables to Factors ####
analysis_data <- analysis_data |>
  mutate(
    result = factor(
      result,
      levels = c("Loss", "Win")
    ),
    firstherald = factor(
      firstherald,
      levels = c("No", "Yes")
    ),
    firstdragon = factor(
      firstdragon,
      levels = c("No", "Yes")
    ),
    firstbaron = factor(
      firstbaron,
      levels = c("No", "Yes")
    )
  )

### Model Data ####
neutral_obj_to_result_model <-
  stan_glm(
    formula = result ~ firstherald + firstdragon + firstbaron,
    data = analysis_data,
    family = binomial(link="logit"),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_aux = exponential(rate = 1, autoscale = TRUE),
    seed = 853
  )


#### Save model ####
saveRDS(
  neutral_obj_to_result_model,
  file = "models/neutral_obj_to_result_model.rds"
)

