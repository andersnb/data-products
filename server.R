#
# server side app to calculate savings needed for an annual income
#
library(shiny)
shinyServer(
	function(input, output) {
		output$income <- renderPrint({input$fvalue})
		output$savings   <- renderPrint({(input$fvalue*25.)})
	}
)
