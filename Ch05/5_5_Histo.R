# 날짜 : 2021/06/29
# 이름 : 김철학
# 내용 : ch05.데이터 시각화 - 히스토그램 교재p150

# 히스토그램
View(cars)
class(cars)

dist <-cars[,2]
class(dist)


barplot(dist)
hist(dist)

# iris 데이터 히스토그램
hist(iris$Sepal.Width, xlim=c(2.0,4.5), xlab='꽃받침 너비', main = '꽃받침 너비 분포도')
