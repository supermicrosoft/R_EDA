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
str(setosa)

virginica=subset(iris, subset = Species =='virginica')
head(virginica)

versicolor=subset(iris, subset = Species =='versicolor')
head(versicolor)

stem(Sepal.Length)
stem(setosa$Sepal.Length)
stem(virginica$Sepal.Length)
stem(versicolor$Sepal.Length)

hist(iris$Sepal.Length,col="white",main = "The Sepal.length of Species",breaks =seq(4,8,0.3),xlab="Sepal.Length",ylab="Freq")
hist(setosa$Sepal.Length,col=adjustcolor("red",alpha=1),breaks =seq(4,8,0.3),density=12,angle=45,add=T)
hist(virginica$Sepal.Length,col=adjustcolor("blue",alpha=1),breaks =seq(4,8,0.3),density=12,angle=45,add=T)
hist(versicolor$Sepal.Length,col=adjustcolor("green",alpha=1),breaks =seq(4,8,0.3),density=12,angle=135,add=T)
a=mean(setosa$Sepal.Length)
hist(a,add=T,breaks =seq(4,8,0.3),height=10)

hist(iris$Sepal.Width,col="white", main="The Sepal_Width of Species",breaks =seq(2,4.5,0.05))
hist(setosa$Sepal.Width,col="red",breaks =seq(2,4.5,0.05),density=10,angle=45,add=T)
hist(virginica$Sepal.Width,col="blue",breaks =seq(2,4.5,0.05),density=10,angle=45,add=T)
hist(versicolor$Sepal.Width,col="green",breaks =seq(2,4.5,0.05),density=10,angle=45,add=T)

hist(iris$Petal.Length,col="white",main = "The Petal.Length of Species",
     breaks=seq(1,7,0.3),
     xlab ="Petal.Length",
     ylab = "Freq")
hist(setosa$Petal.Length,col=adjustcolor("red",alpha=1), breaks=seq(1,7,0.3), density=10, angle=45,add=T)
hist(virginica$Petal.Length,col=adjustcolor("blue",alpha=1),breaks=seq(1,7,0.3),density=10, angle=45,add=T)
hist(versicolor$Petal.Length,col=adjustcolor("green",alpha=1),breaks=seq(1,7,0.3), density=10, angle=135,add=T)

hist(iris$Petal.Width,col="white", main = "The Petal.Width of Species",breaks = seq(0,3,0.1),xlab = "Petal_Width",ylab="Freq")
hist(setosa$Petal.Width,col=adjustcolor("red"),breaks = seq(0,3,0.1),density=10,angle = 45,add=T)
hist(virginica$Petal.Width,col=adjustcolor("blue"),breaks = seq(0,3,0.1),density=10,angle = 45,add=T)
hist(versicolor$Petal.Width,col=adjustcolor("green"),breaks = seq(0,3,0.1),density=10,angle = 45,add=T)
?hist
### col="색상", breaks=seq(빈도), density=빗금개수, angle=빗금각도, add=T or F 그래프함침여부
'hist(dist,
    main="Histogram for 제동거리",    # 제목
    xlab ="제동거리",                       # x축 레이블
    ylab ="빈도수",                          # y축 레이블
    border="blue",                           # 막대 테두리색
    col="green",                              # 막대 색
    las=2,                                      # x 축 글씨 방향 (0~3) 2는 세로방향
    breaks=5)                                 # 막대 개수 조절 , 구간의 개수'