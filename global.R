library(shiny)
library(data.table)
library(plotly)
library(DT)
library(ggplot2)
library(tidyr)




df <- data.frame(state = c("Florida","Florida","Florida","Ohio","Arizona","Ohio", "Ohio", "Arizona", "Arizona", "Ohio", "Arizona"),
                 county = c("Orange county", "Palm Beach county", "Nassau county", "Franklin", "Mohave", "Jackson","Carroll", "Graham", "Apache", "Logan", "Santa Cruz"))
