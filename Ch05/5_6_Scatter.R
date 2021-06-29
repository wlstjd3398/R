# 날짜 : 2021/06/29
# 이름 : 김철학
# 내용 : ch05.데이터 시각화 - 산점도 교재p154

# 산점도

View(mtcars)
wt <- mtcars$wt
mpg <- mtcars$mpg

plot(wt, mpg)
plot(wt, mpg, col='red', pch=5)

ds_iris <-iris[,3:4]
ds_iris

group <- as.numeric(iris$Species)
group

color <- c('red', 'green', 'blue')

plot(ds_iris, pch=16, col=color[group])
