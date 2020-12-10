library(tidyverse)

read_csv("data/spreadsheets/exercise-010-050.csv")

spreadsheet <- read_csv("data/spreadsheets/exercise-010-050.csv")

library(readxl)

tumor_xl <- read_excel("data/medicaldata_tumorgrowth.xlsx")


select(tumor_xl, Size)

select(tumor_xl, size)

select(tumor_xl, Group, Day, Size)

tumor_xl %>%
  select(Group, Day, Size)

filter(tumor_xl, Group == 1)

group1 <- tumor_xl %>%
  filter(Group == 1)

tumor_xl %>%
  filter(Group == 1, Day == 0)

tumor_xl %>%
  filter(Group == 1 & Day == 0)

tumor_xl %>%
  filter(Day == 0 | Day == 13)

tumor_xl %>%
  select(Group, Day, Size) %>%
  filter(Size > 2000)

filtered <- tumor_xl %>%
  select(Group, ID, Day, Size) %>%
  filter(Day == 0 | Day == 13)

write_csv(filtered, "data/tumor_filtered.csv")
