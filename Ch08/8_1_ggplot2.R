#날짜 : 2021/07/01
#이름 : 김철학 
#내용 :ch08. 고급 시각화 분석 - ggplot2 패키지 실습 교재 p259

install.packages('ggplot2')
library(ggplot2)

mtcars
mtcars_table <-table(mtcars$cyl)
mtcars_table

#R 기본 막대차트
barplot(mtcars_table)

#ggplot2 막대차트
qplot(data=mtcars, x=cyl, geom = 'bar')
ggplot(mtcars, aes(x=cyl)) + geom_bar()

#################################################

economics
View(economics)

#R 기본 라인차트
plot(economics$date, economics$unemploy, type='l')

#ggplot2 라인차트
qplot(data=economics, x=date, y=unemploy, geom='line')
ggplot(data=economics, aes(x=date, y=unemploy)) + geom_line()

#################################################

mpg
View(mpg)

#R 기본 박스상자
boxplot(mpg$hwy ~ mpg$drv)

#ggplot2 박스상자
qplot(data=mpg, x=drv, y=hwy, geom='boxplot')
ggplot(data=mpg, aes(x=drv, y=hwy)) + geom_boxplot()

#################################################
iris
View(iris)

#R 기본 히스토그램
hist(iris$Sepal.Width)

#ggplot2 히스토그램
qplot(data=iris, x=Sepal.Width, geom='histogram')
ggplot(data=iris, aes(x=Sepal.Width)) + geom_histogram()


#R 기본 산점도
plot(iris[,3:4], pch=16, col=iris$Species)

#ggplot2 산점도
qplot(data=iris, 
      x=Petal.Length, 
      y=Petal.Width, 
      color=Species, 
      geom='point')

ggplot(data=iris, 
       aes(x=Petal.Length, y=Petal.Width, color=Species)) + geom_point()
