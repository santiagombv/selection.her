shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
      h <- ggplot() + geom_density(aes(x=x, y = ..count..), colour="red", adjust = 4, fill= "red", alpha = 0.5, data=data.frame(x=rnorm(200, 0, 0.5), grp="x")) + xlim(c(-4, 4))
      h <- h + geom_density(aes(x=x, y = ..count..), colour="blue3", adjust = 4, fill = "blue3", alpha = 0.5, data= data.frame(x=rnorm(100, input$DIF, 0.5), grp="x"))
      h <- h + geom_density(aes(x=x, y = ..count..), colour="green4", adjust = 4, fill= "green4", alpha=0.5, data= data.frame(x=rnorm(200, input$her * input$DIF, 0.5), grp="x"))
      h <- h + theme_bw() 
      h <- h + geom_vline(xintercept = 0) 
      h <- h + geom_vline(xintercept = input$DIF) 
      h <- h + geom_vline(xintercept = input$DIF * input$her)
      h
    })
})