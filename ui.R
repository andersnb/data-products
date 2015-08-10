#
# client side shiny app to calculate amount of money to save for retirement
#
library(shiny)
shinyUI(pageWithSidebar(
	headerPanel("Calculate Amount of Money to Save for Retirement"),
        sidebarPanel(
		tags$div(
		tags$p("The following calculation estimates the amount of money you need to save in order to generate a specified annual income in retirement. It assumes that interest rates remain roughly the same.")),
		numericInput("fvalue", "enter desired annual income (in the range of 0 to 250000)", 0, min = 0, max = 250000, step = 1000),
		submitButton("submit")
),

mainPanel(
	#
	# display the results of the conversion
	#
	h3("amount of money to save"),
	verbatimTextOutput("savings")
)
))
