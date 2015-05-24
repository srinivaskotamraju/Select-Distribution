shinyServer(function(input, output) {
        
        data <- reactive({  
                dist <- switch(input$dist,
                               norm = rnorm,
                               unif = runif,
                               lnorm = rlnorm,
                               exp = rexp,
                               rnorm)
                
                dist(input$n)
        })
        
        output$plot1 <- renderPlot({
                
                hist(data(),main=input$histTitle,xlab=input$histXAxis,
                     ylab=input$histYAxis)
					 
        })
})
