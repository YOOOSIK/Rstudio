##문제1
data(trees)
pairs(trees)
cor(trees)
cor.test(trees$Girth, trees$Volume)
cor.test(trees$Girth, trees$Height)

##문제2
#하나 이상의 독립변수로부터 종속변수를 예측하는것
#회귀분석의 목적 1. 종속변수와 연관된 독립변수 발견 
#                2. 관련된 변수들의 관계의 형태로 서술
#                3. 독립변수로부터 종속변수를 예측하는 방정식 제시 
# 타당성 1) 선형성 / 2) 등분산성 / 3) 정규성 /4) 독립성

##문제3
#log(). sqrt()로 종속변수(y)를 변환시켜 선형으로 만든다
# 1) 종속변수의 정규성 살피기
# 2) 회귀식 모델을 세워 회귀 모형 검정
# 3) 종속변수를 log() , sqrt()로 변환시켜 각각 회귀모형을 세우고 검정
# 4) 결과 도출

##문제4
data(cars)
str(cars)
library(psych)
describe(cars)
hist(cars$dist)
qqnorm(cars$dist)
qqline(cars$dist, col = 'red')
shapiro.test(cars$dist)
fit1 <- lm(cars$dist~cars$speed)
summary(fit1)
abline(fit1,col = "red")
plot(log(cars$dist)~cars$speed)
fit2<-lm(log(cars$dist)~cars$speed)
summary(fit2)
abline(fit2)
plot(sqrt(cars$dist)~cars$speed)
fit3<-lm(sqrt(cars$dist)~cars$speed)
summary(fit3)
abline(fit3)




##문제5
class(state.x77) ##데이터 확인
attributes(state.x77)
head(state.x77)
st <- as.data.frame(state.x77[,c("Income","Illiteracy","Murder","Frost")]) ##매트릭스를 데이터 프레임으로 변환
##상관관계 그림 그리기
library(psych)
cor.plot(st) ##변수간의 상관계수를 시각화 
fit<-lm(st$Murder~st$Income+st$Illiteracy+st$Frost) ##살인율을 소득 문맹률 서리일수로 예측
summary(fit) ## 회귀계수 R* p-value
st2 <- as.data.frame(state.x77[,c("Population","Income","Illiteracy","Murder","Frost")]) ##비교용 회귀모델 추가
fit2<-lm(st2$Murder~st2$Population+st2$Income+st2$Illiteracy+st2$Frost) 
op<-par(mfrow = c(2,2)) ##회귀진단 기본 그래프 출력 
plot(fit2)
par(op)
outlierTest(fit2) 
qqPlot(fit2, labels= row.names(states2), simulate = T)
rownames(st2)
fit3 <- lm(Murder~Population+Income+Illiteracy+Frost, data=st2[-28,])
summary(fit3)
anova(fit,fit2)
AIC(fit,fit2)
library(MASS)
stepAIC(fit2)
#잔차의 독립성
library(car)
durbinWatsonTest(fit)
