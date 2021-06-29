# 날짜 : 2021/06/29
# 이름 : 김철학
# 내용 : ch05.데이터 시각화 - 박스상자 교재p148

# 박스상자 기본

View(cars)
class(cars)

dist <-cars[,2]
class(dist)

boxplot(dist, main='자동차 배터리')
boxplot.stats(dist)

# 붓꽃 데이터 분석
iris
boxplot(data=iris, Petal.Width ~ Species)
boxplot(data=iris, Petal.Length ~ Species)

