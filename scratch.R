library(dplyr)
library(ggplot2)

world_happiness <- read.csv('./Data/2021.csv')


regional_scores = 
  world_happiness %>%
  select(Regional.indicator, Ladder.score) %>%
  group_by(Regional.indicator) %>%
  summarise(., mean_score = mean(Ladder.score))

ggplot(regional_scores,aes(x=Regional.indicator , y=mean_score)) + 
  geom_bar(position='dodge', stat="identity",aes(fill=Regional.indicator)) + 
  theme_bw()

ggplot(world_happiness, aes(x=Ladder.score, y=Healthy.life.expectancy, color = Regional.indicator)) +
  geom_point(size=2, shape=1,aes(fill=Regional.indicator)) + 
  theme_bw()


temp = "Logged GDP per capita"
temp2 = str_replace_all(temp, " ", ".")
grep(str_replace_all(temp, " ", "."), colnames(world_happiness))

which(colnames(world_happiness)==temp2)
#str_replace_all("Logged GDP per capita", " ", ".") 
#Healthy.life.expectancy
#Generosity
#Freedom to make life choices
#Social support
#Logged GDP per capita
                                             "Perceptions of corruption")),


ggplot(data = world_happiness) + geom_sf()

world_happiness

#temp = world_happiness %>%
  #select(Regional.indicator, Ladder.score) %>%
  #mutate(newcol = 1) 
#temp

world_happiness2 = world_happiness %>% 
  select(Ladder.score, Healthy.life.expectancy, Regional.indicator) %>% 
  rename(y_col = Healthy.life.expectancy)

ggplot(world_happiness2, aes(x=Ladder.score, y=y_col, color = Regional.indicator)) +
  geom_point(size=2, shape=1,aes(fill=Regional.indicator)) + 
  theme_bw()
