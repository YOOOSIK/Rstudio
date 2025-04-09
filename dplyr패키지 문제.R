# dplyr 패키지 설치 및 로드하기(p.207)
install.packages("dplyr")
library(dplyr)

nrow(mtcars)
str(mtcars)

cyl_group <- group_by(mtcars, cyl)
sorted_cars<-arrange(cyl_group , cyl, desc(hp))
sorted_cars
print(sorted_cars, n=32)
arrange(sorted_cars, desc(hp))
