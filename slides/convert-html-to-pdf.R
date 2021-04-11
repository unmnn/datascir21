# remotes::install_github("jhelvy/xaringanBuilder")
library(purrr)

# dir("slides", pattern = "00.*html$") %>%
  # setdiff(c("01-R-Fundamentals.html", "04-rmd-intro.html")) %>%
c("00-welcome.html") %>%
  # Render html files from .Rmd
  # walk(~ paste0("slides/", xfun::sans_ext(.x), ".rmd"), "xaringan::moon_reader") %>%
  # Convert html files to pdf
  walk(~ xaringanBuilder::build_pdf(
    paste0("slides/", xfun::sans_ext(.x), ".html"), 
    paste0("slides/", xfun::sans_ext(.x), ".pdf"),
    complex_slides = TRUE
  )) %>%
  # Compress PDFs
  # Requires Ghostscript
  # On Windows, set environment variable R_GSCMD
  # Example: R_GSCMD = C:\Program Files\gs\gs9.54.0\bin\gswin64.exe
  walk(~ tools::compactPDF(
    paste0("slides/", xfun::sans_ext(.x), ".pdf"), 
    gs_quality = "ebook"
  ))

