
# 선형 변환과 비선형 변환
set.seed(2023)
x=rnorm(1000, 1, 0.15) #1000개 뽑고 평균=1, 분산 = 0.15
par(mfrow=c(1,2))
hist(x)
hist(2*x+100)

# 제곱근 변환 -> 로그 변환
par(mfrow=c(1,3))
hist(x)
hist(sqrt(x))
hist(sqrt(sqrt(x)))

par(mfrow=c(1,2))
hist(sqrt(sqrt(x)))
hist(log(x))

# 제곱근 변환 -> 지수 변환
par(mfrow=c(1,3))
hist(x)
hist(x^2)
hist(x^4)

par(mfrow=c(1,2))
hist(x^2)
hist(exp(x))
# 왼쪽, 오른쪽 한쪽 꼬리가 길때 어떤 변환을 사용하여 대칭을 만들기위해 사용해야 하는지 알기
###
par(mfrow=c(1,3))
hist(sqrt(sqrt(x)))
hist(x)
hist(exp(x))


#### 산포 상이
set.seed(2023)
x1=rgamma(100,4)
g1=rep("A",100)
x2=rgamma(100,5)
g2=rep("B",100)
x3=rgamma(100,9)
g3=rep("C",100)
claims=c(x1,x2,x3)
group=factor(c(g1,g2,g3))

par(mfrow=c(1,3))
boxplot(claims~group, ylab="raw scale")
boxplot(sqrt(claims)~group, ylab="sqrt scale")
boxplot(log(claims)~group, ylab="log scale")

#### 두 변수의 관계
par(mfrow=c(1,2))
x=rnorm(100,5,1.5) #랜덤하게 추출
y1=0.1*x^2+0.2*rnorm(100,0,1)
plot(y1~x, xlim=c(1,10), ylim=c(0,10))
y2=10*sqrt(x/10)+0.2*rnorm(100,0,1)
plot(y2~x, xlim=c(1,10), ylim=c(0,10))

par(mfrow=c(1,2), mar=c(4,3,1,1), oma=c(0.5,0.5,1.5,0.5))
plot(sqrt(y1)~x, xlim=c(1,10))
plot(y2^2~x, xlim=c(1,10))
mtext("y의 변환으로 선형화된 두 변수의 관계", outer=T, cex=2)


par(mfrow=c(1,2), mar=c(4,3,1,1), oma=c(0.5,0.5,1.5,0.5))
x1=x^2
x2=sqrt(x)
plot(y1~x, xlim=c(1,10))
plot(y2~x, xlim=c(1,10))
mtext("Transfrom X for LinearGraph ", outer=T, cex=2)


####### 재표현 활용사례
library(MASS)
data(Animals)
head(Animals)
str(Animals)
attach(Animals)
par(mfrow=c(1,2))
plot(brain~body, xlim=c(0,100000))
text(y=brain, x=body, label=abbreviate(rownames(Animals)), adj=0, cex=0.9)
plot(log(brain)~log(body), xlim=c(-4,12), ylim=c(-4, 12))
text(y=log(brain), x=log(body), label=abbreviate(rownames(Animals)), adj=0, cex=0.9)

lm(log(brain)~log(body))
m0=lm(log(brain)~log(body))
plot(log(brain)~log(body), xlim=c(-4,12), ylim=c(-4,12))
abline(m0$coef, lty="dotted")
m1=rlm(log(brain)~log(body))
r=m1$resid
plot(log(brain)~log(body), xlim=c(-4,12), ylim=c(-4,12))
abline(m1$coef, lty="dotted")

names=rownames(Animals)
names1=names[order(r,decreasing = T)]
r1=r[order(r, decreasing = T)]
data.frame(names1, round(r1,3))
plot(28:1 ~r1, xlim=c(-5,5))
text(y=28:1, x=r1, label=names1, adj=0, cex=0.9)

####### 표준화 변환
par(mfrow=c(2,2))
x=rnorm(100,40,10)
y=c(rnorm(90,40,10), rnorm(10,80,5))
z.x=(x-mean(x))/sd(x)
z.y=(y-mean(y))/sd(y)
hist(z.x, breaks=seq(-6,6,0.5), freq=F, ylim=c(0,0.7))
hist(z.y, breaks=seq(-6,6,0.5), freq=F, ylim=c(0,0.7))
# hist(z.x, breaks=seq(-6,6,0.5), freq=F, ylim=c(0,1))
# hist(z.y, breaks=seq(-6,6,0.5), freq=F, ylim=c(0,1))

x=rnorm(100,40,10)
y=c(rnorm(90,40,10), rnorm(10,80,5))
r.x=(x-median(x))/IQR(x)
r.y=(y-median(y))/IQR(y)
hist(r.x, breaks=seq(-6,6,0.5), freq=F, ylim=c(0,0.7))
hist(r.y, breaks=seq(-6,6,0.5), freq=F, ylim=c(0,0.7))
