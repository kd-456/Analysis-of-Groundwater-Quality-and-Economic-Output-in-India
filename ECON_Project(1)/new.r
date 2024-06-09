# Load necessary libraries
library(readxl)
library(tidyverse)

# Read the data from an Excel file (update the path to your file)
data <- read_excel("cleaned_data.xlsx")

# Clean the data by dropping rows with any NA values in relevant columns
cleaned_data <- na.omit(data[, c("GDP", "potassium", "Gini")])

# Define the regression model with polynomial terms and Gini
model <- lm(potassium ~ GDP + I(GDP^2) + I(GDP^3) + Gini, data=cleaned_data)

# Get the summary of the model
summary(model)
