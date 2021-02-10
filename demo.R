library(dplyr)
library(ggplot2)
library(reticulate)

# import CSV using pandas
pd <- reticulate::import("pandas")

df <- pd$read_csv('penguins.csv')

head(df)

df %>%
  ggplot(aes(x = bill_depth_mm, y = body_mass_g, color = species)) +
  geom_point() +
  theme_minimal() +
  labs(x = "Bill Depth (mm)", y = "Body Mass (g)", color = 'Species')

