shinyUI(
  pageWithSidebar(
    headerPanel("Stopping distance calculation (ft) depending on speed (mph)"),
    
    sidebarPanel(
      sliderInput('x', 'Miles per hour', 15, min=4.5, max=150, step=0.5),
      submitButton("Refresh")
    ),
    mainPanel(
      h3('Stopping distance (ft)'),
      verbatimTextOutput("prediction")
      )
  )
)