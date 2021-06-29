# 날짜 : 2021/06/29
# 이름 : 김철학
# 내용 : ch05.데이터 시각화 - 파이차트 교재p147

# 파이차트
season <- c('winter','summer','spring','summer','summer',
            'autumn', 'autumn', 'summer','spring','spring')
season
ds <- table(season)
ds

pie(ds, main='Season')
pie(ds, main='Season', col=terrain.colors(4))
