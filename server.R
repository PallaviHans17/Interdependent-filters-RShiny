#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


function(input, output, session) {

  
    
# County filter updates on state filter    
  observeEvent(input$state,{
    
    if(input$state!=""){
        co = df[df$state == input$state,][["county"]]
      } else if (input$state=="") {
         co = unique(df$county)
      } 

    updateSelectInput(session, 'county', choices = co, selected = input$county)
  },ignoreInit = T)
  

# State filter updates on county filter
  observeEvent(input$county,{
    
    if(input$county!=""){
      st = df[df$county == input$county,][["state"]]
    } 
     else if (input$county=="") {
      st = input$state
     } 
    
    updateSelectInput(session, 'state', choices = unique(df$state), selected = st)
  },ignoreInit = T)

}
