library(readxl)
library(readr)
library(tidyr)

####

data  <- data.frame(readxl::read_excel(
  "wrcr22698-sup-0002-2016WR020102-ds01.xlsx", 
  sheet = 1, skip = 1, na = "-999"))
units <- data[1,]
data  <- data[-1,]

data <- fill(data, Reference.Paper, Year)

metadata <- data.frame(readxl::read_excel(
  "wrcr22698-sup-0002-2016WR020102-ds01.xlsx", 
  sheet = 2))

####

readr::write_csv(data, "data.csv")