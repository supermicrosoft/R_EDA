
##################################### qqnorm, qqplot 
install.packages("HistData")
library(HistData)
data(ZeaMays)
str(ZeaMays)

par(mfrow=c(1,2))
qqnorm(ZeaMays$diff)
qqplot(ZeaMays$self,ZeaMays$cross)

##################################### 각종 분포
x=seq(-4, 4, by = 0.01)

####################### 정규분포
par(mfrow=c(1,2))

plot(x, dnorm(x, 0, 1), type='l', ylim=c(0,1))
lines(x, dnorm(x, -2, 1), col="blue")
lines(x, dnorm(x, 2, 1), col="red")

plot(x, dnorm(x, 0, 1), type='l', ylim=c(0,1))
lines(x, dnorm(x, 0, 0.5), col="blue")
text(1,0.9,"sigma=0.5",col="blue")
lines(x, dnorm(x, 0, 2), col="red")
text(2,0.2,"sigma=2",col="red" )

####################### t-분포
plot(x, dnorm(x, 0,1), type='l')

lines(x, dt(x, 2), col="blue")
text(0,0.3,"df=2",col="blue")
lines(x, dt(x, 10), col="red")
text(1,0.35,"df=10",col="red")
lines(x, dt(x, 20), col="green")
text(0.8,0.38,"df=20",col="green")

####################### 균등분포
plot(x, dunif(x, -4, 4), type='l')

####################### 감마분포
par(mfrow=c(1,2))
x_g=seq(0,10,0.01)

plot(x_g, dgamma(x_g,1, 1), type='l')
text(0.5,0.8,"alpha=1")
lines(x_g, dgamma(x_g,2, 1), col="blue")
text(1.5,0.4,"alpha=2",col="blue")
lines(x_g, dgamma(x_g,3, 1), col="red")
text(2.5,0.32,"alpha=3",col="red")
lines(x_g, dgamma(x_g,4, 1), col="green")
text(3,0.26,"alpha=4",col="green")

plot(x_g, dgamma(x_g,2, 1), type='l')
text(2,0.35,"rate=1")
lines(x_g, dgamma(x_g,2,1/2 ), col="blue")
text(2.5,0.2,"rate=1/2",col="blue")
lines(x_g, dgamma(x_g,2, 1/3), col="red")
text(4,0.14,"rate=1/3",col="red")
lines(x_g, dgamma(x_g,2, 1/4), col="green")
text(5,0.11,"rate=1/4",col="green")

####################### 지수분포
plot(x_g, dexp(x_g, 1), type='l')
lines(x_g, dexp(x_g, 0.5), col="blue")
text(2,0.3,"rate=0.5",col="blue")
lines(x_g, dexp(x_g, 0.25), col="red")
text(2,0.1,"rate=0.25",col="red")

####################### 카이제곱분포
plot(x_g, dchisq(x_g,2), type='l')
lines(x_g, dchisq(x_g,3), col="blue")
text(2,0.25,"df=3",col="blue")
lines(x_g, dchisq(x_g,4), col="red")
text(3.5,0.18,"df=4",col="red")
lines(x_g, dchisq(x_g,8), col="green")
text(6,0.13,"df=8",col="green")

####################### F-분포
par(mfrow=c(1,3))

plot(x_g, df(x_g,3,1), type='l', ylim=c(0,1))
text(1,0.6,"df2=1")
lines(x_g, df(x_g,3,5), col="blue")
text(1.6,0.4,"df2=5",col="blue")
lines(x_g, df(x_g,3,10), col="red")
text(2,0.3,"df2=10",col="red")
lines(x_g, df(x_g,3,20), col="green")
text(3,0.13,"df2=20",col="green")

plot(x_g, df(x_g,1,3), type='l', ylim=c(0,1))
text(1,0.6,"df1=1")
lines(x_g, df(x_g,5,3), col="blue")
text(1.6,0.4,"df1=5",col="blue")
lines(x_g, df(x_g,10,3), col="red")
text(2,0.3,"df1=10",col="red")
lines(x_g, df(x_g,20,3), col="green")
text(3,0.13,"df1=20",col="green")

plot(x_g, df(x_g,1,1), type='l', ylim=c(0,1))
text(1.3,0.9,"df1=1, df2=1")
lines(x_g, df(x_g,10,5), col="blue")
text(2.7,0.4,"df1=10,df2=5",col="blue")
lines(x_g, df(x_g,5,10), col="red")
text(2.8,0.3,"df1=5,df2=10",col="red")
lines(x_g, df(x_g,20,20), col="green")
text(2.5,0.8,"df1=20, df2=20",col="green")

####################### 이항분포
par(mfrow=c(1,2))

x <- seq(0, 30, by = 1)

plot(x, dbinom(x, 30, 0.5), type='l',ylim=c(0,0.2))
lines(x,dbinom(x, 30, 0.3), col="blue")
lines(x,dbinom(x, 30, 0.7), col="red")

plot(x, dbinom(x, 10, 0.5), type='l')
lines(x,dbinom(x, 20, 0.5), col="blue")
lines(x,dbinom(x, 30, 0.5), col="red")
lines(x,dbinom(x, 40, 0.5), col="green")

####################### 음이항분포
par(mfrow=c(1,2))

plot(x, dnbinom(x, 5, 0.7), type='l')
lines(x,dnbinom(x, 5, 0.5), col="blue")
lines(x,dnbinom(x, 5, 0.3), col="red")

plot(x, dnbinom(x, 1, 0.5), type='l')
lines(x,dnbinom(x, 3, 0.5), col="blue")
lines(x,dnbinom(x, 5, 0.5), col="red")
lines(x,dnbinom(x, 7, 0.5), col="green")

####################### 기하분포
par(mfrow=c(1,1))

plot(x, dgeom(x, 0.7), type='l')
lines(x,dgeom(x,0.5), col="blue")
lines(x,dgeom(x,0.3), col="red")

####################### 초기하분포

plot(x, dhyper(x,10,20,2), type='l')
lines(x,dhyper(x,10,20,5), col="blue")
lines(x,dhyper(x,10,20,10), col="red")
lines(x,dhyper(x,10,20,15), col="green")

####################### 포아송분포
par(mfrow=c(1,1))

plot(x, dpois(x, 1), type='l')
lines(x,dpois(x, 5), col="blue")
lines(x,dpois(x, 10), col="red")


##################################### qqnorm 여러 형태
####################### 정규분포
par(mfrow=c(1,2))
qqnorm(rnorm(40,100,15))
qqnorm(rnorm(40,100,15))

####################### 혼합 정규분포
qqnorm(c(rnorm(20,70,15), rnorm(20,130,15)))
qqnorm(c(rnorm(20,70,15), rnorm(20,130,15)))

####################### 특이값
qqnorm(c(rnorm(38,100,15), 25, 175))
qqnorm(c(rnorm(38,100,15), 25, 175))

####################### 꼬리가 짧은 분포
qqnorm(c(runif(40,80,120)))
qqnorm(c(runif(40,80,120)))

####################### 꼬리가 긴 분포
qqnorm(c(rexp(20,1),-rexp(20,1)))
qqnorm(c(rexp(20,1),-rexp(20,1)))

####################### 오른쪽 꼬리가 긴 분포
qqnorm(exp(rnorm(40,5,1)))
qqnorm(exp(rnorm(40,5,1)))

####################### 왼쪽 꼬리가 긴 분포
qqnorm(-exp(rnorm(40,5,1)))
qqnorm(-exp(rnorm(40,5,1)))


##################################### qqnorm 여러 형태
####################### 다른 두 분포의 비교
X=rbinom(800,1200,1/2)
Y=rnorm(1200,80,2)
qqplot(X,Y)
qqplot(X,Y,type="l")

X=rbinom(12,12,1/2)
Y=rnorm(12,80,2)
qqplot(X,Y)
qqplot(X,Y,type="l")

####################### 시험 난이도가 다를 경우 
####################### 상대적인 위치를 동시에 비교해보자
X=rnorm(800,40,4)
Y=rnorm(1200,80,2)
qqplot(X,Y)
qqplot(X,Y,type="l")

round(quantile(X),1)
round(quantile(Y),1)
# x반에서 40점 받은애가 y반에서 몇점을 받을까? 하는거 시험 나옴

