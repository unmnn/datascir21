library(targets)
library(tarchetypes)
options(tidyverse.quiet = TRUE)

create_plot <- function(data) {
  ggplot(data, aes(x = Petal.Width, fill = Species)) + 
    geom_histogram()
}

tar_option_set(packages = c("dplyr", "forcats", "ggplot2", "readr", "tidyr"))

list(
  tar_target(raw_data, readxl::read_excel("targets_files/raw_iris.xlsx")),
  tar_target(my_data, raw_data %>% mutate(Species = fct_inorder(Species))),
  tar_target(hist, create_plot(my_data)),
  tar_target(fit, lm(Sepal.Width ~ Petal.Width + Species, my_data)),
  tar_render(report, "targets_files/report.Rmd")
)
