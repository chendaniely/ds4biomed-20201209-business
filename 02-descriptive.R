library(tidyverse)

tumor_subset <- read_csv("data/tumor_filtered.csv")

tumor_subset %>%
  filter(Day == 0) %>%
  pull(Size) %>%
  mean()

tumor_subset %>%
  filter(Group == 2, Day == 0) %>%
  pull(Size) %>%
  mean()

tumor_subset %>%
  filter(Group == 2, Day == 0) %>%
  pull(Size) %>%
  summary()

# average size
# at day 0
# for each group

tumor_subset %>%
  filter(Day == 0) %>%
  group_by(Group) %>%
  summarize(avg_size = mean(Size))

tumor_subset %>%
  filter(Day == 0) %>%
  group_by(Group) %>%
  summarize(avg_size = mean(Size),
            sd_size = sd(Size),
            min = min(Size),
            sum = sum(Size))
