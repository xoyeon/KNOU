# 히스토그램1

score<-c(93, 83, 91, 68, 75, 87, 89, 96, 97, 67, 83, 81, 87, 80, 64,
         83, 88, 76, 91, 78, 72, 80, 69, 80, 84, 71, 91, 81, 88, 73)
hist(score)
hist(score, main="")

# 히스토그램2
rv<-c(0.8, 0.8, 0.8, 0.9, 0.9, 0.9, 0.9, 0.9,
      1, 1, 1.8,
      2, 2.1, 2.3, 2.4, 2.8, 2.9,
      3, 3.2, 3.3, 3.5, 3.8, 3.8, 3.9,
      4, 4.2, 4.4, 4.5,
      5.1, 5.3, 5.3, 5.4,
      14, 17, 18, 19,
      21, 21, 23, 25, 27, 28, 32, 34, 36,
      41, 42, 44, 48, 49,
      51, 54, 59, 60, 61, 62, 80,
      240)
hist(rv)
hist(rv, main="", xlab="CRP", breaks=20)
hist(rv, main="", xlab="CRP", breaks=seq(0, 240, 20))

# 히스토그램3
set.seed(2021)
rn<-c(rnorm(100, 5, 2), rnorm(100, 10, 2))

hist(rn)
hist(rn, breaks=20, main="", xlab="value")
hist(rn, breaks=5, main="", xlab="value")

# 점도표
age<-c(57, 61, 47, 57, 48, 58, 57, 61, 54, 50, 68, 51)
m.age<-mean(age)

stripchart(age)
stripchart(age, method="stack", pch=19)
stripchart(age, method="stack", pch=19, offset=5, cex=1.5)
stripchart(age, method="stack", pch=19, offset=5, cex=1.5, axes=F)

axis(1, at=seq(45, 70, 5))
stripchart(age, method="stack", pch=19, offset=5, cex=1.5, axes=F, xlim=c(45, 70))
axis(1, at=seq(45, 70, 5))
par(xpd=TRUE )
stripchart(age, method="stack", pch=19, offset=5, cex=1.5, axes=F, xlim=c(45, 70))
axis(1, at=seq(45, 70, 5))

points(m.age, -5, pch=17, cex=2, col="red")
####extract with width=500, height=200

# BoxPlot1
age<-c(57, 61, 47, 57, 48, 58, 57, 61, 54, 50, 68, 51)
boxplot(age, ylab="Age")

# BoxPlot2
member<-c(92, 107, 180, 90, 78, 91, 102, 88, 106, 125, 95, 102, 162)
boxplot(member, ylab="Number of board members")

# 통계요약
member<-c(92, 107, 180, 90, 78, 91, 102, 88, 106, 125, 95, 102, 162)

mean(member)
var(member)
sd(member)
median(member)
fivenum(member)
IQR(member)
range(member)