# 1. exam.csv 파일의 데이터를 출력
install.packages('dplyr')
library(dplyr)

dd_exam <- read.csv('../07.08/exam.csv')
View(dd_exam)

# 2. 1반 학생들 추출
df_class1 <- dd_exam %>% select(everything()) %>% filter(classes==1)
df_class1

# 3. 1반이거나 3반이거나 5반인 학생 추출 

df_c5 <- dd_exam %>% filter(classes==1 | classes==3 | classes==5)
df_c5


# 4. 수학점수가 50점 이상인 학생추출
df_math1 <- dd_exam %>% filter(math >= 50)
df_math1

# 5. 수학점수가 70점 이상, 영어점수가 70점이상인 학생 추출
df_math2 <- dd_exam %>% filter(math >= 70 & english >= 70)
df_math2

