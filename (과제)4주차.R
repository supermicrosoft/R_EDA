#IRIS �ټ� ��ġ���

head(iris)
str(iris)

#���
mean(iris$Sepal.Length)
mean(setosa$Sepal.Length)
mean(virginica$Sepal.Length)
mean(versicolor$Sepal.Length)

#�߾Ӱ�
table(iris$Sepal.Length)
table(setosa$Sepal.Length)
table(virginica$Sepal.Length)
table(versicolor$Sepal.Length)

# �ֺ�
table(iris$Sepal.Length)
max(table(iris$Sepal.Length))
table(iris$Sepal.Length)[table(iris$Sepal.Length)==3]

table(setosa$Sepal.Length)
max(table(setosa$Sepal.Length))
table(setosa$Sepal.Length)[table(setosa$Sepal.Length)==3]

table(virginica$Sepal.Length)
max(table(virginica$Sepal.Length))
table(virginica$Sepal.Length)[table(virginica$Sepal.Length)==3]

table(versicolor$Sepal.Length)
max(table(versicolor$Sepal.Length))
table(versicolor$Sepal.Length)[table(versicolor$Sepal.Length)==3]
