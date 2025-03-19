##소수 찾기
a<-17
prime<-TRUE
for(i in 2:a){
  if(a %% i == 0)
    prime == FALSE
}
if (prime == TRUE){
  print("소수")
} else{
  print("합성 수")
}
m1<-matrix(1:6, nrow = 2,ncol=3)
print(m1)
a<-17
print(a)
v1<-c(-1,0,1)
v2<-c("hello","hi","~!")
print(v1)
print(v2)
v3<-c(-1,1,0,"Hello","~!")
print(v3)
v4<-list(-1,1,0,"Hello","~!")
print(v4)
str(v4)
str(v3)

length(v3)
length(v4)
length(v2)

##matrix
x<-c(1,1,0,2,1,1,3,1,0)
length(x)
##3x3 matrix
A<-matrix(x, nrow = 3, ncol = 3)
print(A)
## dim-3 matrix
xx<-c(1,2,3,4,5,6)
arr<-array(xx, dim = c(2,2,3))
print(arr[,,1])
print(arr[,,2])
print(arr[,,3])

##조건문/반복문
x<-1:10
print(x)
y<-10:1
print(y)
str(x)
str(y)
a<-10
if(a %% 2 == 0){
  print("Even")
}else{
  print("Odd")
}
##if ~ else, if ~ else
a<-2
b<-3
c<-1
#finding #maximum
if(a>b & a>c){
  print(a)
}else if(b>c & b>a){
  print(b)
}else{
  print(c)
}
#iteration
for (i in 1:10){
  print(3*i)
}

sum<-0
for (i in 1:10){
  sum<-sum+i
}
print(sum)
fac<-1
for (i in 1:10){
  fac<-fac*i
}
print(fac)
for (i in 1:10){
  print(paste("3 *",i,"=",3*i))
}

##function
gugudan<-function(dan){
  for (i in 1:10){
    print(paste(dan, "*", i, "=", dan*i))
  }
}
gugudan(91)

##데이터프레임
IP <- c(1,2,3,4,5,6,7,8,9,10)
SEX <- c("F","M")




























