exam = read.table('exam1.txt', header = T, fileEncoding = "CP949")
head(exam)
summary(exam)
boxplot(exam)
attach(exam)
boxplot(score, horizontal = T). # 박스그림 가로 표시

구인구 = read.csv('광역시-구 인구.csv', header = T, fileEncoding = "CP949")
head(구인구)
attach(구인구)
boxplot(인구~지역명)

시 = reorder(지역명, 지역코드)
boxplot(인구~시)

table(시)
boxplot(인구~시, width=table(시))


# par(family = "AppleGothic")
# MAC 그래프 한글 표시 안될때