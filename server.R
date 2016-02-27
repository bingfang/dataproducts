Heartdiseaserisk <- function(weight,height){((weight/height^2)-22)
  }

shinyServer(
  function(input, output){    
    output$inputweight <- renderPrint({input$weight})
    output$inputheight <- renderPrint({input$height})
    output$Prediction <- renderPrint({Heartdiseaserisk(input$weight,input$height)})
 
}
)