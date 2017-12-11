library("shiny")

shinyUI(pageWithSidebar(
  headerPanel(""),
  
  sidebarPanel(
    numericInput("min", "Мінімальне число", min = 0, max = 100, value = 10),
    hr(),
    numericInput("max", "Максимальне число", min = 0, max = 100, value = 25),
    actionButton("button", "Згенерувати", width = "100%")
  ),
  mainPanel(
    textOutput("text")
  )
))