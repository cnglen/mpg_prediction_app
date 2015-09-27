library(shiny)

shinyUI(
    fluidPage(
        titlePanel("MPG prediction"),
        sidebarLayout(
            sidebarPanel(
                h3("Input Parameters"),
                sliderInput("wt",
                            "Weight (lb/1000)",
                            min = 1.5,
                            max = 5.5,
                            value = 2),
                sliderInput("qsec",
                            "1/4 mile time",
                            min = 13.5,
                            max = 23.5,
                            value = 16.5),
                selectInput("am",
                            label = h3("Transmission"),
                            choices = list("Manual" = 1.0, "Automatic" = 0.0),
                            selected = 1.0)
                ),
            mainPanel(
                h3("Pridicted MPG: Miles/(US) gallon"),
                verbatimTextOutput("mpg")
                )
            ),
        mainPanel(
            h2("document"),
            br(),
            h3("We use wt,  qsec,  am to predict the mpg of a car,  where"),
            h4("wt:    Weight (lb/1000)"),
            h4("qsec:  1/4 mile time"),
            h4("am:    automatic or manual transmission"),
            h4("mpg:   Miles/(US) gallon"),
            br(),
            h4("Enjoy :)")
            )
        )
    )


