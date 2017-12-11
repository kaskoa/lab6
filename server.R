random <- function(min, max){
  if(min > max){
    return ("Максимальне значення більше за мінімальне")
  }
  if(min == max){
    value <- min
  }
  value <- sample(min:max, 1)
  
  return (paste("Випадкове значення: ", value))
}
shinyServer(
  function(input, output) {
    output$text <- eventReactive(input$button, {
      random(input$min, input$max)
    })
  }
)