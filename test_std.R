setosa=subset(iris, subset = Species =='setosa')
head(setosa)
str(setosa)

virginica=subset(iris, subset = Species =='virginica')
head(virginica)

versicolor=subset(iris, subset = Species =='versicolor')
head(versicolor)

stem(Sepal.Length)
stem(setosa$Sepal.Length)
stem(virginica$Sepal.Length)
stem(versicolor$Sepal.Length)

m1 = mean(setosa$Sepal.Length)
std1 = sd(setosa$Sepal.Length)
m2 = mean(virginica$Sepal.Length)
std2 = sd(virginica$Sepal.Length)
m3 = mean(versicolor$Sepal.Length)
std3 = sd(versicolor$Sepal.Length)

x=seq((m1-5*std1),(m1+5*std1),0.01)
y=dnorm(x,mean=m1,sd=std1)

plot(x,y,xlim=c((m1-5*std1),(m1+5*std1)),type="l",ann=FALSE)
plot(x,y,xlim=c((m2-5*std2),(m2+5*std2)),type="l",ann=FALSE, add = T)
plot(x,y,xlim=c((m3-5*std3),(m2+5*std3)),type="l",ann=FALSE, add = T)

title(main="Normal distribution",cex.main=1.6,xlab="x",ylab="f(x)", cex.lab=1.3)
text((m+3*std),0.3*max(y),paste("mean=",m))
text((m+3*std),0.24*max(y),paste("std=",std))

hist(iris$Sepal.Length,col="white",main = "The Sepal.length of Species",breaks =seq(4,8,0.3),xlab="Sepal.Length",ylab="Freq")
hist(setosa$Sepal.Length,col=adjustcolor("red",alpha=1),breaks =seq(4,8,0.3),density=12,angle=45,add=T)
hist(virginica$Sepal.Length,col=adjustcolor("blue",alpha=1),breaks =seq(4,8,0.3),density=12,angle=45,add=T)
hist(versicolor$Sepal.Length,col=adjustcolor("green",alpha=1),breaks =seq(4,8,0.3),density=12,angle=135,add=T)
a=mean(setosa$Sepal.Length)
hist(a,add=T,breaks =seq(4,8,0.3),height=10)
