function(input,output,session){


  color_palette <- c("Central and Eastern Europe" = "#F9CA0B",
                     "Commonwealth of Independent States" = "#9908F8",
                     "East Asia" = "#DCAEF9",
                     "Latin America and Caribbean" = "#15C6F6",
                     "Middle East and North Africa" = "#14F5C2",
                     "North America and ANZ" = "#09B84B",
                     "South Asia" = "#F57504",
                     "Southeast Asia" = "#9FEA08",
                     "Sub-Saharan Africa" = "#FA09F3",
                     "Western Europe" = "#F1877D")
  
  output$plot1 <- renderPlot({
    if(input$variables3 == "No"){
    ggplot(world_happiness %>% 
             filter(Regional.indicator %in% input$variables2), 
            aes_string(x="Ladder.score", y=input$variables, color = "Regional.indicator")) +
      geom_point(size=2, shape=1, stroke = 2) + 
      scale_color_manual(values = color_palette) +
      theme_bw()
    } else {
      ggplot(world_happiness %>% 
               filter(Regional.indicator %in% input$variables2), 
             aes_string(x="Ladder.score", y=input$variables, color = "Regional.indicator")) +
        aes(text="test") +
        geom_point(size=2, shape=1, stroke = 2) + 
        scale_color_manual(values = color_palette) +
        geom_smooth(method="lm", se= FALSE) + 
        theme_bw()
    }
  })
    
  

}



