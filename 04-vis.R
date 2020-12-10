library(tidyverse)
library(ggplot2)
library(medicaldata)

blood <- blood_storage

r_freq <- blood %>%
  group_by(Recurrence) %>%
  summarize(count = n())
r_freq

ggplot(data = blood, mapping = aes(x = Recurrence)) + geom_bar()

r_freq

ggplot(data = r_freq, mapping = aes(x = Recurrence, y = count)) +
  geom_bar(stat = "identity")

ggplot(blood, aes(x = Age)) + geom_histogram()
ggplot(blood, aes(x = Age)) + geom_histogram(bins = 10)

ggplot(blood, aes(x = as.factor(TVol), y = Age)) + geom_boxplot()
ggplot(blood, aes(x = as.factor(TVol), y = Age)) + geom_violin()

ggplot(blood, aes(x = PVol, y = PreopPSA)) +
  geom_point()

ggplot(blood, aes(x = PVol, y = PreopPSA, color = as.factor(sGS))) +
  geom_point()

ggplot(blood, aes(x = PVol, y = PreopPSA, color = as.factor(sGS))) +
  geom_point() +
  facet_wrap(~ RBC.Age.Group)

ggplot(blood, aes(x = PVol, y = PreopPSA, color = as.factor(sGS))) +
  geom_point() +
  facet_grid(Recurrence ~ RBC.Age.Group)
