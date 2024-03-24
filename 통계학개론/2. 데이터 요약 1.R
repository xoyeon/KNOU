# 1 막대그래프
library(ggplot2)
library(forcats)

transp<-c("bicyle", "bus", "bus", "walking", "bus", "bicyle", "bicyle", "bus", "bus", "bus", "bicyle", "bus",
          "bicyle", "bicyle", "walking", "bus", "bus", "bicyle", "bicyle", "walking", "walking", "bicyle", "bus",
          "bus", "bus", "bus", "bicyle", "bus", "bus", "bicyle", "bicyle", "bicyle")

dat1<-data.frame(transp)

ggplot(data=dat1) + geom_bar(mapping=aes(x=transp)) + xlab("Transportation")

## forcats의 'fct_infreq' 빈도순으로 그려줌
ggplot(data=dat1) + geom_bar(mapping=aes(x=fct_infreq(transp))) +  xlab("Transportation")


# 2 막대그래프
obesity<-factor(c("underweight", "normal", "overweight", "obese"),
                levels=c("underweight", "normal", "overweight", "obese"))

count<-c(6, 69, 27, 13)

perc<-count/sum(count)*100

dat2<-data.frame(obesity, count, perc)

ggplot(data=dat2) + geom_bar(mapping=aes(x=obesity, y=perc),
                             stat="identity") + xlab("Obesity") + ylab("Percentage (%)")

# 3 원그래프
table(transp)

dat3<-data.frame(transportation=c("bus", "bicyle", "walking"), count=c(15, 13, 4))

ggplot(data=dat3) + geom_bar(mapping=aes(x="", y=count, fill=transportation), stat="identity") +
  coord_polar("y", start=0) + xlab("") + ylab("")

## 숫자 삭제
ggplot(data=dat3) + geom_bar(mapping=aes(x="", y=count, fill=transportation), stat="identity") +
  coord_polar("y", start=0) + xlab("") + ylab("") + 
  theme(axis.text = element_blank(), axis.ticks = element_blank(), panel.grid = element_blank())
