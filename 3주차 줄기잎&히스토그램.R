## 줄기잎 그림

# 자료 불러오기
exam=read.table("exam1.txt",header=T)
head(exam)
# 불러오기 확인
head(exam)

# 자료구조 확인
str(exam)

# 줄기잎 그림 그리기1
stem(exam$score)

# 줄기잎 그림 그리기2
attach(exam) #줄기??? 그림 그리기1 처럼 계속 하기 힘들어서 attach를 사용함
stem(score)

# 정보 확인
?stem

# 척도 조정
stem(score,0.5)

## 히스토그램
hist(score)

#계급(bin) 수
hist(score,breaks=seq(0,100,20))
hist(score,breaks=c(0,20,40,60,80,100))

# 계급 bin
par(mfrow=c(4,4)) #4행4열

hist(score, breaks=3,main="계급의 수가 3일 때")
hist(score, breaks=5,main="계급의 수가 5일 때")
hist(score, breaks=7,main="계급의 수가 7일 때")
h=hist(score, breaks=8,main="계급의 수가 8일 때")

hist(score, breaks=10,main="계급의 수가 10일 때")
hist(score, breaks=12,main="계급의 수가 12일 때")
hist(score, breaks=13,main="계급의 수가 13일 때")
hist(score, breaks=14,main="계급의 수가 14일 때")

hist(score, breaks=15,main="계급의 수가 15일 때")
hist(score, breaks=20,main="계급의 수가 20일 때")
hist(score, breaks=25,main="계급의 수가 25일 때")
hist(score, breaks=27,main="계급의 수가 27일 때")

hist(score, breaks=30,main="계급의 수가 30일 때")
hist(score, breaks=35,main="계급의 수가 35일 때")
hist(score, breaks=40,main="계급의 수가 40일 때")
hist(score, breaks=100,main="계급의 수가 100일 때")

# 계급 갯수
par(mfrow=c(4,4))
hist(score, nclass=3,main="계급의 수가 3일 때")
hist(score, nclass=5,main="계급의 수가 5일 때")
hist(score, nclass=7,main="계급의 수가 7일 때")
h=hist(score, nclass=8,main="계급의 수가 8일 때")

hist(score, nclass=10,main="계급의 수가 10일 때")
hist(score, nclass=12,main="계급의 수가 12일 때")
hist(score, nclass=13,main="계급의 수가 13일 때")
hist(score, nclass=14,main="계급의 수가 14일 때")

hist(score, nclass=15,main="계급의 수가 15일 때")
hist(score, nclass=20,main="계급의 수가 20일 때")
hist(score, nclass=25,main="계급의 수가 25일 때")
hist(score, nclass=27,main="계급의 수가 27일 때")

hist(score, nclass=30,main="계급의 수가 30일 때")
hist(score, nclass=35,main="계급의 수가 35일 때")
hist(score, nclass=40,main="계급의 수가 40일 때")
hist(score, nclass=100,main="계급의 수가 100일 때")

# 계급 구간
hist(score,labels=T)
hist(score, right=T, labels=T)
hist(score, right=F, labels=T)

###################################### 실습 문제 1 
### 미국 어느 도시의 강우의 산성도 측정자료
# 불러오기 read.table
rain=read.table("acid rain.txt")

str(rain)

stem(rain)

typeof(rain)

# 변환
rain_r=unlist(rain, use.name=F)

# 불러오기 scan
rain=scan("acid rain.txt")

str(rain)

stem(rain)

stem(rain)
stem(rain,0.5)

hist(rain, main="The City of US", xlab="rain", ylab="freq")
########### 산성과 알칼리 성의 경계 pH=7.0 산성일수록 pH 작음

###################################### 실습 문제 2 
### 조선 와 27명의 수명
kings=read.table("chosun kings.txt", header=T,fileEncoding = "CP949" )
head(kings)
str(kings)

kings=read.table("chosun kings.txt", header=T, stringsAsFactors = F,fileEncoding = "CP949")
str(kings)

attach(kings)
stem(Life)
hist(Life, labels = T)


###################################### 과제 
### R 내장데이터
## 통계학자 피셔(R.A Fisher)의 붓꽃의 분류 연구에 기반한 데이터
################################################### 붓꽃 종별 줄기잎그림 및 히스토그램을 그리시오.
head(iris)
str(iris)

# sepal: 꽃받침
# petal: 꽃잎
# specied: 종

setosa=subset(iris, subset = Species =='setosa')
head(setosa)

virginica=subset(iris, subset = Species =='virginica')
head(virginica)

versicolor=subset(iris, subset = Species =='versicolor')
head(versicolor)

stem(Sepal.Length)
stem(setosa$Sepal.Length)
stem(virginica$Sepal.Length)
stem(versicolor$Sepal.Length)

