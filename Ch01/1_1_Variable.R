# 날짜 : 2021/06/28
# 이름 : 김철학
# 내용 : Ch01. R설치와 개요 - 변수 교재 p 39

# 변수 ctrl + enter 한줄실행됨(전체는 다 블럭지정후 ctrl + enter)
num1 <- 1
num2 <- 2
print(num1)
print(num2)

str1 <- 'Hello R!'
str2 <- '안녕 R'
str1
str2

# 복사는 alt + shift + 방향키, 한줄삭제는 ctrl + d

# 스칼라(Scala) 변수 - 한개의 값을 갖는 변수, 일반적인 변수 
var1 <- 1
var2 <- 2
var3 <- var1 + var2
var3

# 벡터(Vector) 변수 - 하나 이상의 값을 갖는 변수, 배열
x <- c(1, 2, 3)
y <- c('김유신', '김춘추', '장보고', '강감찬', '이순신')
x
y
x[1]
y[2]

# 팩터(Factor) 변수 - 문자열이 저장되는 벡터, 범주형 데이터에 사용
str <- c('A', 'B', 'C', 'D', 'E')
f <- factor(str)
f


