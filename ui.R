library(shiny)


shinyUI(pageWithSidebar(
  # Application title.
  headerPanel("Compound Interest"),
  
  sidebarPanel(
    # Takes in the inputs required to calculate compound interest.
    # enter the principal amount.
    numericInput('p', 'enter principal, labeled p', 20, min =10 , max = 99999999, step = 100),
    
    numericInput('I', 'enter rate, labeled I', 0, min = 1, max = 100, step = 5),
    # enter the interest.
    numericInput('y', 'enter years, labeled y', 1, min = 1, max = 100, step = 2),
    # enter the number of years.
    submitButton('Calculate')
  ),
 
  mainPanel(
   
    h3('Principal Entered '),
      verbatimTextOutput("op"),
    h3('Rate Entered '),
    verbatimTextOutput("or"),
    h3('No. of Years Entered '),
    verbatimTextOutput("oy"),
    h3('Total Amount :  '),
    verbatimTextOutput("oamount")
  )
)
    
)