#Loading the dataset
library(datasets)
library(shiny)
cars<-cars

#Applying the linear regression
lm1<-lm(dist~speed, data=cars)

#Applying the function for prediction
prediction<-function(x)
{coef(lm1)[1]+coef(lm1)[2]*x}

#Shiny Server function:

shinyServer(
  function(input, output){
    output$prediction<-renderPrint({prediction(input$x)})
  }
)





