# 날짜 : 2021/06/28
# 이름 : 김철학
# 내용 : Ch02.데이터 유형과 구조 - String 문자열 처리 교재 p84

# R 패키지 설치
install.packages('stringr')

# R 패키지 로드 = 모듈선언(ex. import)
library(stringr)

# 문자열 
str <- 'Hello R'
str

# 문자열 길이
str_length(str)

# 문자열 자르기
str_sub(str, 1, 5)


# p72 vector
no <- c(1, 2, 3)
name <- c("hong", "lee", "kim")
pay <- c(150, 250, 300)
vemp <- data.frame(No = no, Name = name, Pay = pay) #칼럼명 지정
vemp

# p72 matrix
m <- matrix(
 c(1, "hong", 150,
   2, "lee", 250,
   3, "kim", 300), 3, by = T) # 행 우선, 3개의 리스트 생성
memp <- data.frame(m)
memp

