##패키지
install.packages("carData")
library(carData)
install.packages("pROC")
library(pROC)

##데이터 확인
data("TitanicSurvival")
str(TitanicSurvival)
df<-TitanicSurvival

##생존여부 yes/no 를 1/0으로 변환
df$survived <- ifelse(df$survived == "yes", 1,0)

##결측치 제거
df <- na.omit(df)
##회귀모형 적합
m <- glm(survived ~ sex + passengerClass + age, data = df, family = binomial)

##회귀결과
summary(m)

##적합도 지표 확인
m$null.deviance
m$deviance
m$aic
m$iter

##ROC 곡선 그리기
prob <- predict(m, type = "response")
actual <- df$survived
roc_obj <- roc(actual, prob)
plot(roc_obj, col = "red", main = "ROC Curve - Titanic Survival")
auc_value <- auc(roc_obj)
cat("AUC (Area Under the Curve): ", auc_value, "\n")
