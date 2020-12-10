library(tidyverse)

tumor <- read_csv("data/tumorgrowth_long.csv")

tumor %>%
  pivot_longer(`0`:`28`)

tumor_tidy <- tumor %>%
  pivot_longer(`0`:`28`, names_to = "day", values_to = "size")

tumor_mean <- tumor_tidy %>%
  group_by(Group, day) %>%
  summarize(avg_size = mean(size, na.rm = TRUE)) %>%
  mutate(day = as.numeric(day)) %>%
  arrange(Group, day)

tb <- read_csv("data/tb_long.csv")

tb %>%
  pivot_longer(m014:fu)

tb_long <- tb %>%
  pivot_longer(starts_with(c('m', 'f'))) %>%
  separate(name, into = c('sex', 'age_group'), sep = 1)
tb_long

tb_long %>%
  group_by(year, age_group) %>%
  summarize(sum(value, na.rm = TRUE))
