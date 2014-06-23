library(shiny)

# function to calculate compound interest.
amt  <- function(p,I,y)p*(1+(I/100))^y

shinyServer(function(input, output) {
  
  output$op<-renderPrint({input$p})
  output$or<-renderPrint({input$I})
  output$oy<-renderPrint({input$y})
 

  output$oamount<-renderPrint({amt(input$p,input$I,input$y)})
  
}
)


