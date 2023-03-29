exam=read.table('exam1.txt',header=T)
head(exam)
attach(exam)

# 평균
mean(score)

# 중앙값
median(score)

# 최빈값
table(score)
max(table(score))
table(score)[table(score)==3]

# 표준편차
sd(score)

# 범위
range(score)
diff(range(score))

# 사분위수범위
IQR(score)

# 다섯수치 요약
min(score)
max(score)
quantile(score)
quantile(score, c(0.25,0.5,0.75))
quantile(score, c(0.2, 0.8))

median(score)

summary(score)
summary(score)[-4]

quantile(score, c(0.1,0.9), type=6) #왜도, 첨도 계산하기 위해서
### type = 1~9 여러가지 존재

q1=quantile(score)[2]
print(q1)
q2=quantile(score)[3]
q3=quantile(score)[4]
s=(q3-q2-q2+q1)/(q3-q1)


p10=quantile(score,0.1)
p90=quantile(score,0.9)
k={(q3-q1)/2}/(p90-p10)
k


# 분포 모양 확인
par(mfrow=c(1,2))

hist(score, freq=F, ylim=c(0,0.03))
lines(density(score))

plot(density(score), na.rm=T, ylim=c(0,0.03))

par(new=TRUE)
x=seq(min(density(score)),max(density(score)), length=65)
plot(x, dnorm(x,mean=mean(x),sd=sd(x)), type='l', col='blue')

# 왜도와 첨도 계산
install.packages("moments")
library(moments)

skewness(score)
kurtosis(score)

y=c(0,1,2,3,4)
plot(y, dunif(y, min=0,max=4), type='l', col='blue')
skewness(dunif(y))
kurtosis(dunif(y))

