#Vectors object(atomic vectors, classes of vectors)
/'
Logical     ex) TRUE, FALSE
Numeric 12.3, 5, 999
Integer 2L, 34L
Complex 3+2i
Character 'a', 'good'
Raw "Hello" 는 48 64 6c 6c 6f로 저장된다.
'/
# R에서 가장 기본적인 R-Object 는 Vector이다. atomic vector들을 저장함.
# Vectors는 c() 함수를 사용하여 만들 수 있다. 엘리먼트들을 벡터로 합친다는 뜻.
# combine의 c
  
# Create a vector
apple = c('red','green','yellow')
print(apple)
# Get the class of the vector
print(class(apple))


### Matrix : 메트릭스는 2차원 DataSet, 메트릭스 함수에 벡터를 제공해서 만들 수 있음
# Create a matrix
M = matrix( c('a','a','b','b','c','a'), nrow=2,ncol=3,byrow=TRUE)
print(M)
print(class(M)) # Array 라고 출력됨

### Arrays : 메트릭스는 2차원에 한정, arrays는 어떠한 차원으로도 만들 수 있음
# Create an array
a = array( c('green','yellow'), dim=c(3,3,2)) # 3x3x2차원을 만듬,(3x3)x2
print(a)

### Factors : Factors는 vector로 만들어지는 r-object다, Factors는 vector의 element들의 고유값(distinct value)를 레이블로 저장한다.
###         : 이 레이블들은 Vector elements type이 어떻든 항상 character다. 통계적 모델링에 유용.
###         : factor()함수를 사용하여 만들 수 있다. nlevels() 함수를 통해 factors의 레벨을 알 수 있다.
# Creats a vector
apple_colors = c('green','green','yellow','red','red','red','green')
# Create a factor object
factor_apple = factor(apple_colors)
# Print factor
print(factor_apple)
print(nlevels(factor_apple))

### Data Frames : 구조화된 Data Object. Matrix와 다른점은 Data Frame은 컬럼으로 어떤 DataType이든 넣을 수 있다.
#               : 첫번째 컬럼은 numeric, 두번째 컬럼은 문자열, 세번째 컬럼은 논리값 등 자유롭게 지정가능
#               : 같은 길이의 vector들의 list로 볼 수 있다.
# data.frame() 함수로 생성

# Create data frame
BMI = data.frame(
  gender = c('Male','Male',"Female"),
  height = c(170,181,178),
  weight = c(67,77,90),
  Age    = c(25,27,38)
)
print(BMI)


