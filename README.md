# Investigating the Importance of Early Objective Control in Professional League of Legends

## Overview

This paper investigates the strategic importance of early control over neutral objectives in professional League of Legends (LoL) esports. Leveraging data from Tier 1 leagues worldwide, we analyze the impact of securing neutral objectives such as the Rift Herald, Elemental Drakes, and Baron Nasher on a team's odds of winning. Through logistic regression modeling, we examine the relationship between objective control and match outcomes. Our findings reveal that early control of neutral objectives significantly increases a team's odds of winning, with the magnitude of this effect varying across different objectives.

## Data

The data for this paper has been acquired from the 2023 LoL esports match data repository created by [Oracle's Elixir](https://oracleselixir.com/tools/downloads). The data can be acquired from the Google Drive linked in the Downloads page on the website.  A copy of this data has been provided in the repository already. If the data is somehow missing, please download and save the data (given as a csv) in 'data/raw_data' for the scripts to function properly.

## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from Oracle's Elixir.
-   `data/analysis_data` contains the cleaned dataset that was constructed.
-   `model` contains fitted model. 
-   `other` contains details about LLM chat interactions and sketches simulating expected data.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.


## Statement on LLM usage

The parts of the paper were written with the help of ChatGPT 3.5. The entire chat history is available in inputs/llms/usage.txt.
