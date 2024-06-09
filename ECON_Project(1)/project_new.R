# Replace 'path/to/your/dataset.xlsx' with the actual path to your Excel file
library(readxl)

data <- read_excel("dataset.xlsx")

head(data)  # Shows the first few rows of the data frame

str(data)   # Displays the structure of the data frame


