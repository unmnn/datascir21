Sys.setlocale("LC_ALL","English")
Sys.setenv(LANG = "en_US.UTF-8")
Sys.setlocale("LC_TIME", "English")

# The version number in the directory name of an HTML dependency can be
# suppressed by setting options(htmltools.dir.version = FALSE) when the
# dependency is copied via `copyDependencyToDir()`. 
options(htmltools.dir.version = FALSE)
options(width = 90) # width of console output
# load fonts (mainly Fira Sans)
# extrafont::font_import()
extrafont::loadfonts("win", quiet = TRUE)

yt_counter <- 0

# set default knitr options
knitr::opts_chunk$set(fig.width = 15/2.54, fig.height = 12/2.54, fig.retina = 4)
knitr::opts_chunk$set(
  eval = TRUE, 
  echo = TRUE, 
  warning = TRUE, 
  message = FALSE, 
  cache = TRUE
)

ggplot2::theme_set(ggplot2::theme_gray(base_size = 18, base_family = "Fira Sans"))