library(shiny)
library(ggplot2)
library(gridExtra, quietly =T)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Diferenciales de selección"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    
    sidebarPanel(
      
      sliderInput("DIF", label = "diferencial", min=-2, max=2, value = 2, step = 0.01), 
      sliderInput("her", label = "heredabilidad", min=0, max=1, value = 0.5, step = 0.01), 
      width = 3),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))