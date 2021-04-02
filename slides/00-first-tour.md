## 00-first.tour.Rmd 1

* RGui -> intimidating and antiquated
* dark mode
* font size

* console: where we write R code, where the computation happens
* 4+3
* x <- 5 (object assignment -> environment)
* x * 3 (arithmetic operations)
* library(openintro) 
* View(acs12) (american census data from 2012)
* income (doesn't work)
* acs12$income
* mean(acs12$income)
* ?mean -> na.rm
* mean(acs12$income, na.rm = TRUE)

## 00-first.tour.Rmd 2
* Functions
* Install packages
* Access columns (variables) in data frames with $
* ? to open documentation
* tidyverse
* R Markdown


## Example: ex-1.Rmd
 
* Oktoberfest: famous beer festival and funfair
* first thing: knit (we see the code but we want to see the output)
* Gear icon -> Preview in...
* blanks: Set Name
* code chunk: 3 backticks, curly braces, r (other engines)
* label for code chunk -> navigation
* paragraph with inline code
* nrow(of) + 1 -> see that output changes
* pro: reproducibility (another year, typos)
* bullet points (hyphens) -> unordered lists
* also possible to change to enumerated list
* backticks: variable/ code
* double asterisk: boldface
* single underscore: italic
* links: square brackets, parenthesis
* Help -> Markdown Quick Reference 
* formatting is not that important -> focus more on interpretation of your results
* eval = FALSE
* message = FALSE
* Help -> Cheat sheets

* Environment of R Markdown doc
* Example: x <- 5; x * 3 -> add code chunk and knit -> error
* This is by design: Rmd doc should be a fully reproducible document.
* Everything has to be in your R Markdown document
