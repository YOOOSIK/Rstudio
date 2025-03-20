## iris
data(iris)
str(iris)
View(iris)
##apply()
##column_sum
apply(iris[,1:4], 2, sum)
apply(iris[,1:4], 2, mean)
apply(iris[,1:4], 2, min)
summary(iris[,1:4])
lapply(iris[,1:4], sum)
sapply(iris[,1:4], min)
sapply(iris[,1:4], mean)
##csv
inf<-read.csv("C:/Users/user/Desktop/R-Studio/infant.csv")
inf
View(inf)
setwd("C:/Users/user/Desktop/R-Studio")
str(inf)
plot(inf$age, inf$weight)
## 6 lines show
head(inf)
##linear regression
lm(inf$age~inf$weight, data = inf)
fit<-lm(inf$age~inf$weight, data = inf)
abline(fit)
summary(fit)

library(vcd)
help(package = "vcd")
data(Arthritis)
# 6 lines show
head(Arthritis)
str(Arthritis)
names(Arthritis)
dim(Arthritis)
length(Arthritis)
colnames(Arthritis)
hist(inf$age)
hist(inf$weight)
##csv
data(Hitters)
Hitters<-read.csv("C:/Users/user/Desktop/R-Studio/Hitters.csv")
head(Hitters)
dim(Hitters)
str(Hitters)
help(Hitters)
is.na(Hitters)
##결측치 제거
N_Hitters<-na.omit(Hitters)
is.na(N_Hitters)
dim(N_Hitters)
n_mean_salary<-mean(Hitters$Salary, na.rm=TRUE)
n_mean_salary
mean_salary<-mean(Hitters$Salary)
is.na(Hitters)
mean_salary<-mean(Hitters$Salary)
mean_salary
##결측치 값 대체
library(VIM)
S_Hitters<-kNN(Hitters, k=3)
dim(S_Hitters)
dim(Hitters)
View(S_Hitters)
s_mean<-mean(S_Hitters$Salary)
s_mean
