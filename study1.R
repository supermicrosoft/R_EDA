#Vectors object(atomic vectors, classes of vectors)
/'
Logical     ex) TRUE, FALSE
Numeric 12.3, 5, 999
Integer 2L, 34L
Complex 3+2i
Character 'a', 'good'
Raw "Hello" �� 48 64 6c 6c 6f�� ����ȴ�.
'/
# R���� ���� �⺻���� R-Object �� Vector�̴�. atomic vector���� ������.
# Vectors�� c() �Լ��� ����Ͽ� ���� �� �ִ�. ������Ʈ���� ���ͷ� ��ģ�ٴ� ��.
# combine�� c
  
# Create a vector
apple = c('red','green','yellow')
print(apple)
# Get the class of the vector
print(class(apple))


### Matrix : ��Ʈ������ 2���� DataSet, ��Ʈ���� �Լ��� ���͸� �����ؼ� ���� �� ����
# Create a matrix
M = matrix( c('a','a','b','b','c','a'), nrow=2,ncol=3,byrow=TRUE)
print(M)
print(class(M)) # Array ��� ��µ�

### Arrays : ��Ʈ������ 2������ ����, arrays�� ��� �������ε� ���� �� ����
# Create an array
a = array( c('green','yellow'), dim=c(3,3,2)) # 3x3x2������ ����,(3x3)x2
print(a)

### Factors : Factors�� vector�� ��������� r-object��, Factors�� vector�� element���� ������(distinct value)�� ���̺��� �����Ѵ�.
###         : �� ���̺����� Vector elements type�� ��� �׻� character��. ����� �𵨸��� ����.
###         : factor()�Լ��� ����Ͽ� ���� �� �ִ�. nlevels() �Լ��� ���� factors�� ������ �� �� �ִ�.
# Creats a vector
apple_colors = c('green','green','yellow','red','red','red','green')
# Create a factor object
factor_apple = factor(apple_colors)
# Print factor
print(factor_apple)
print(nlevels(factor_apple))

### Data Frames : ����ȭ�� Data Object. Matrix�� �ٸ����� Data Frame�� �÷����� � DataType�̵� ���� �� �ִ�.
#               : ù��° �÷��� numeric, �ι�° �÷��� ���ڿ�, ����° �÷��� ������ �� �����Ӱ� ��������
#               : ���� ������ vector���� list�� �� �� �ִ�.
# data.frame() �Լ��� ����

# Create data frame
BMI = data.frame(
  gender = c('Male','Male',"Female"),
  height = c(170,181,178),
  weight = c(67,77,90),
  Age    = c(25,27,38)
)
print(BMI)

