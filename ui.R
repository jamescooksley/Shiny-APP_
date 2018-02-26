library(shiny)

shinyUI(
  navbarPage("This is my first shiny application!",
             tabPanel("Analysis",
                      fluidPage(
                        titlePanel("Unerstanding the interaction between variables and miles per gallon (MPG)"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c("Number of cylinders" = "cyl",
                                          "Displacement (cu.in.)" = "disp",
                                          "Gross horsepower" = "hp",
                                          "Rear axle ratio" = "drat",
                                          "Weight (lb/1000)" = "wt",
                                          "1/4 mile time" = "qsec",
                                          "V/S" = "vs",
                                          "Transmission" = "am",
                                          "Number of forward gears" = "gear",
                                          "Number of carburetors" = "carb"
                                        )),
                            
                            checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                        tabPanel("Regression model", 
                                                 plotOutput("mpgPlot"),
                                                 verbatimTextOutput("fit")
                                        )
                            )
                          )
                        )
                      )
             ),
             tabPanel("Checking the source code",
                      h2("All the source code can be found within coursera"),
                      hr(),
                      h3("Peer assessments/regression model course project"),
                      helpText("For this scenario we will magine that you are employed by MPG-Mechanics, a magazine that focuses on the economy of cars, you are looking a vehicle dataset and you're are interested in exploring interactions between different vehicle components",
                               "you will look at a set of variables vs miles per gallon (MPG) (outcome). You're most interested in the following points: Is manual or auto transmission better for MPG. Quantify the MPG difference between manual and auto transmission"),
                      h3("Take note"),
                      p("A data frame with 32 observations on 11 variables."),
                      
                      a("https://class.coursera.org/regmods-008")
             ),
             tabPanel("More detail",
                      h2("MPG-Mechanics road tests"),
                      hr(),
                      h3("Description"),
                      helpText("The data was extracted from the 1974 MPG-Mechanics magazine,",
                               " and contains fuel consumption and 10 aspects of automobile performance/design",
                               " for 32 automobiles (1973-74 models)."),
                      h3("Format"),
                      p("A data frame with 32 observations on 11 variables."),
                      
                      p("  [, 1]   mpg         Miles/(US) gallon"),
                      p("  [, 2]	 cyl	 Number of cylinders"),
                      p("  [, 3]	 disp	 Displacement (cu.in.)"),
                      p("  [, 4]	 hp	 Gross horsepower"),
                      p("  [, 5]	 drat	 Rear axle ratio"),
                      p("  [, 6]	 wt	 Weight (lb/1000)"),
                      p("  [, 7]	 qsec	 1/4 mile time"),
                      p("  [, 8]	 vs	 V/S"),
                      p("  [, 9]	 am	 Transmission (0 = automatic, 1 = manual)"),
                      p("  [,10]	 gear	 Number of forward gears"),
                      p("  [,11]	 carb	 Number of carburetors"),
                      
                      h3("Source"),
                      
                      p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411.")
             ),
             tabPanel("Go back to Github repository",
                      a("https://github.com/jamescooksley/Shiny-APP_"),
                      hr(),
                      h2("Hopefully this has been of some interest!")
             )
  )
)