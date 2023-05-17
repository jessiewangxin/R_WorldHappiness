

fluidPage(skin='blue',
  titlePanel('World Happiness Report 2021'),
                  fluidRow(
                  column(3,
                  HTML('<br></br>'),
                  selectizeInput(inputId ="variables",
                                 label = "Happiness Rating versus",
                                 choices = c("Healthy life expectancy" = "Healthy.life.expectancy",
                                             "Generosity" = "Generosity",
                                             "Freedom to make life choices"="Freedom.to.make.life.choices",
                                             "Social support" = "Social.support",
                                             "Logged GDP per capita" = "Logged.GDP.per.capita",
                                             "Perceptions of corruption" = "Perceptions.of.corruption")),
                  
                  checkboxGroupInput("variables2", "Regions",
                                     unique(world_happiness$Regional.indicator),
                                     selected = unique(world_happiness$Regional.indicator)),
                  radioButtons("variables3", 
                               label = "Fit Line?",
                               choices = c("Yes",
                                           "No"),
                               selected = "No")),
                  column(9,
                         HTML('<br></br>'),
                         HTML('<br></br>'),
                         HTML('<br></br>'),
                         plotOutput("plot1")
)
                  ))
                  
                  



