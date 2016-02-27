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
    verbatimTextOutput("Prediction"),
    h4('Note:Body mass index is a useful measure of overweight and obesity. It is calculated from your height and weight. BMI is an estimate of body fat and a good gauge of your risk for diseases that can occur with more body fat. The higher your BMI, the higher your risk for heart disease.')
  )
))