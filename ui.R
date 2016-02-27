shinyUI(pageWithSidebar(
  headerPanel("Risk of heart diseases"),
  sidebarPanel(
    numericInput('weight', 'weight in kg', 50, min=30, max=150, step=5),
    numericInput('height', 'height in meter', 1.7, min=1, max=2, step=0.05),
    submitButton('Submit')),
  mainPanel(
    h3('Results of prediction'),
    h4('weight'),
    verbatimTextOutput("inputweight"),
    h4('height'),
    verbatimTextOutput("inputheight"),
    h4('Risk of heart diseases in percentage'),
    verbatimTextOutput("Prediction")
  )
))