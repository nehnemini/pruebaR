# esqueleto base de una aplicación en R
library(shiny)
#ui <- fluidPage("Hola Mundo")
ui <- fluidPage(
  sliderInput(inputId = "num",
            label = "Escoge un número",
            value = 100, min = 30, max = 10000),
            plotOutput("hist")
)
server <- function(input, output){
  output$hist <- renderPlot({
    hist(rnorm(100), breaks = input$num)
  })
}
shinyApp(ui = ui, server = server)


