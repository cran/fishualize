## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

img <- function(obj, nam) {
  image(1:length(obj), 1, as.matrix(1:length(obj)), col=obj, 
        main = nam, ylab = "",xlab = " ", xaxt = "n", yaxt = "n",  bty = "n")
}

## ---- echo=FALSE, warning=FALSE, message=FALSE--------------------------------
library(fishualize)
c <- sort(unique(fishualize::fishcolors$option))
invisible(lapply(1:length(c), function(i){
  sp <- c[i]
  img(fishualize::fish(5, option = sp), sp)
  return(" ")
}))


