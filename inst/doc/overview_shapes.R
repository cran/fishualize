## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(fishualize)
library(ggplot2)

## ---- echo=FALSE, warning=FALSE, message=FALSE--------------------------------
s <- fishualize::fishapes()
lapply(1:nrow(s), function(i){
  sp <- s[i, "option"]
  fam <- s[i, "family"]
  ggplot() + add_fishape(family = fam, option = sp) +
    labs(title = paste(fam, ":", sp)) +
    theme_void()
})


