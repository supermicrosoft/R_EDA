# 박스그림 그리기 : boxplot()
# reorder(지역명, 지역코드)

head(iris)
attach(iris)
par(mfrow=c(2,2))
boxplot(Sepal.Length~Species, col=c("Deep Sky Blue 2", "Sky Blue 2", "Light Sky Blue 2"))

boxplot(Sepal.Width~Species, col=c("Deep Sky Blue 2", "Sky Blue 2", "Light Sky Blue 2"))
mean(setosa$Petal.Length)
summary(setosa$Petal.Width)

boxplot(Petal.Length~Species, col=c("Deep Sky Blue 2", "Sky Blue 2", "Light Sky Blue 2"))

boxplot(Petal.Width~Species, col=c("Deep Sky Blue 2", "Sky Blue 2", "Light Sky Blue 2"))
mean(setosa$Petal.Width)














iris % > % 
  select(Sepal.Width) % > % 
  plot(mapping = aes(x = Sepal.Width))+
  stat_density(alpha = 0.7,
               fill = 'steelblue',
               color = 'blue')+
  labs(title = 'Distribution:Sepal.Width')
