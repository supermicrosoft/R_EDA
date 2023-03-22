##### R 데이터의 구조

## 벡터 vector
# 갯수 제한 없음
# 모든 같은 형식이여야 함
# numeric(integer, double), character, logical, NULL, NA
# combine
# 세 명의 의료 환자 진단 데이터
temperature=c(98.1,98.6,101.4)
typeof(temperature)
subject_name=c("John Doe","Jane Deo","Steve Graves")
typeof(subject_name)
flu_status=c(FALSE, FALSE, TRUE)
typeof(flu_status)

length(temperature)

## 팩터 factor
gender=factor(c("MALE","FEMALE","MALE"))
# 데이터에 아직 존재하지 않는 레벨 추가
blood=factor(c("O","AB","O"),
             levels=c("A","B","AB","O"))
# 서열 저장 가능
symptoms=factor(c("SEVERE","MILD","MODERATE"),
                levels=c("MILD","MODERATE","SEVERE"),
                order=TRUE)
# 순서 저장
temperature[-2]

ls()

## 리스트 list
# 모든 같은 형식이 아니여도 됨

subject1=list(fullname=subject_name[1],
              temperature=temperature[1],
              flu_status=flu_status[1],
              gender=gender[1],
              blood=blood[1],
              symptoms=symptoms[1])

typeof(subject1)
subject1[2]
subject1[[2]]        # for only num using double[]
subject1$temperature # only numeric
subject1[c("temperature","flu_status")]

## 데이터프레임 tatafrmae 
# 동일한 개수의 값을 갖는 벡터나 팩터의 리스트
pt_data=data.frame(subject_name,temperature,flu_status,gender,blood,symptoms)
pt_data$subject_name
pt_data$temperature
pt_data$gender

pt_data=data.frame(subject_name,temperature,flu_status,gender,blood,symptoms,
                   stringsAsFactors = FALSE) # false -> that means is not factor
pt_data$subject_name

pt_data[c("temperature","flu_status")]
pt_data[2:3]

#[rows, columns]
pt_data[1,2]

#새 변수 생성: 화씨온도->섭씨온도
pt_data$temp_c=(pt_data$temperature-32)*(5/9)

## 행렬 matrix
# 열과 열, 행과 행 결합
m1=rbind(subject_name,temperature) 
#rbind = combine row
typeof(m1)
m2=cbind(subject_name,temperature)
typeof(m2)
m3=cbind(temperature,temperature)
typeof(m3)
m4=rbind(m1,m2)
# matrix
1:10
seq(1,10,1) # 1 to 10, gap =1
rep(1,10)   # 1 multiful 10

x=seq(1,10,1)
typeof(x)

m=matrix(x, ncol=5)
typeof(m)
nrow(m)
ncol(m)

m=matrix(x, nrow=5)
nrow(m)
ncol(m)
