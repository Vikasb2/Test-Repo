#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


# Define server logic required to draw a histogram
shinyServer(function(input, output,session) {

    output$mtcars_plot <- renderPlotly(plot_ly(mtcars, x = ~ mtcars[ , input$variable1],
                                               y = ~ mtcars[ , input$variable2],
                                               type = "scatter", mode = "markers")
    )
    output$mtcars_plot2 <- renderPlotly(plot_ly(mtcars, x = ~ mtcars[ , input$variable1],
                                                y = ~ mtcars[ , input$variable2],
                                                type = "scatter", mode = "markers"))
    
    output$mtcars_table <- renderDataTable(mtcars, options = list(dom = 't'))
    
    output$dropdown <- renderDropdownMenu({
        dropdownMenu(messageItem("User", "Test message", color = "teal", style = "min-width: 200px"),
                     messageItem("Users", "Test message", color = "teal", icon = "users"),
                     messageItem("See this", "Another test", icon = "warning", color = "red"))
    })

})
