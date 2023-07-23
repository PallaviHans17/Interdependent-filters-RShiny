#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

fluidPage(
  title = "Test App",
  
  mainPanel(
    tabsetPanel(
      id = 'tables',
      tabPanel("Filters", 
               fluidRow(column(6,selectInput('state', 'State', choices=c("",unique(df$state)), selected = "")),
                        column(6,selectInput('county', 'County', choices=c("",unique(df$county)), selected = ""))))
      
    )
  )
)