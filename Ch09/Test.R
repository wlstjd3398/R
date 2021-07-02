#Test1 : exam.csv 파일을 데이터 프레임 출력

install.packages('dplyr')
library(dplyr)

df_exam <- read.csv('../file/exam.csv')
View(df_exam)

#Test2 : math, english, science 변수만 갖는 데이터프레임 출력
df_rs1  <- df_exam %>% select(math, english, science)
df_rs1

#Test3 : class=1인 모든 변수 갖는 데이터프레임 출력
df_class1 <- df_exam %>% select(everything()) %>% filter(class==1)
df_class1

#Test4 : math가 60점이상이고 80점 미만인 데이터프레임 출력
df_math <- df_exam %>% filter(math >= 60 & math < 80)
df_math

#Test5 : english가 60점 이상이고 80점 미만인 데이터프레임 출럭
df_eng <- df_exam %>% filter(english >= 60 & english < 80)
df_eng

#Test6 : math가 60점 이상이고 점수가 높은순서대로 class, id, math 변수를 갖는 데이터프레임 출력
df_result <- df_exam %>% select(class, id, math) %>% 
                          filter(math >= 60) %>% 
                          arrange(desc(math)) %>% 
                          head(3)

df_result

#Test7 : class로 그룹화되고 수학점수 평균(mean_math) 변수를 갖는 데이터프레임 출력
df_group1 <- df_exam %>% group_by(class) %>% summarise(mean_math = mean(math))
df_group1

#Test8 : total(math, english, science의 합) 파생변수를 갖는 데이터프레임 출력
df_total <- df_exam %>% mutate(total = math+english+science)
df_total

#Test9 : mean(math, english, science의 합의 평균) 파생변수를 갖는 데이터프레임 출력
df_mean <- df_total %>% mutate(mean = total / 3)
df_mean

#Test10 : grade(평균의 등급, A, B, C, D, F) 파생변수를 갖는 데이터프레임 출력
df_grade <- df_mean %>% mutate(grade = ifelse(mean >= 90, 'A',
                                        ifelse(mean >= 80, 'B',
                                         ifelse(mean >= 70, 'C', 
                                          ifelse(mean >= 60, 'D', 'F')))))

df_grade
