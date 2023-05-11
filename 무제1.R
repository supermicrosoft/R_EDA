data(iris)
head(iris)

install.packages('gridExtra')
install.packages('RColorBrewer')
install.packages('stargazer')
install.packages('caret')
install.packages('knitr')
install.packages('car')
install.packages('')
install.packages('')

library(tidyverse)
library(gridExtra)
library(RColorBrewer)
library(stargazer)
library(caret)
library(knitr)
library(car)


table(is.na(iris))
str(iris)
summary(iris)
iris %>% 
  select(Sepal.Width) %>% 
  ggplot(mapping = aes(x = Sepal.Width))+
  stat_density(alpha = 0.7,
               fill = 'steelblue',
               color = 'blue')+
  labs(title = 'Distribution:Sepal.Width')
