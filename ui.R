shinyUI(fluidPage(
        titlePanel("Histogram Example"),
        fluidRow(
                
                column(3, wellPanel(
                        radioButtons("dist", "Distribution type:",
                                     list("Normal" = "norm",
                                          "Uniform" = "unif",
                                          "Log-normal" = "lnorm",
                                          "Exponential" = "exp")),
                        sliderInput("n", "N:", min = 10, max = 1000, value = 220,
                                    step = 30),
                        br(),
                        textInput("histTitle", "Histogram Title:", "Histogram Title"),
                        textInput("histXAxis", "Histogram X Axis:", "Label for X Axis"),
                        textInput("histYAxis", "Histogram Y Axis:", "Label for Y Axis"),
                        br(),
                        submitButton("Submit")
                )),
                column(6,
                       plotOutput("plot1", width = 600, height = 450)
                ),
                column(7,
                      a("Documentation/Help?",href="readme.html", target="_blank")
                )
        )
))
