#a
data <- read.table("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt", header = T)

data$Group <- as.factor(data$Group)
data$Group = factor(data$Group,labels = c("kucing oren","kucing hitam","kucing putih"))

class(data$Group)

grup1 <- subset(data, Group=="kucing oren")
grup2 <- subset(data, Group=="kucing hitam")
grup3 <- subset(data, Group=="kucing putih")

qqnorm(grup1$Length)
qqline(grup1$Length)

qqnorm(grup2$Length)
qqline(grup2$Length)

qqnorm(grup3$Length)
qqline(grup3$Length)

bartlett.test(Length~Group, data=data)

#b
p-value = 0.8054
karena p-value > 0.05 maka kita tidak dapat menolak H0 bahwa variancesnya sama

#c
model1 <- lm(Length~Group, data=data)
anova(model1)

#d
Nilai P adalah .0013, yang berarti kita tidak dapat menolak hipotesis nol

#e
TukeyHSD(aov(model1))

#f
#install.packages("ggplot2")
library(ggplot2)
ggplot(data, aes(x = Group, y = Length)) +
  geom_boxplot(fill = "grey80", colour = "black") +
  scale_x_discrete() + xlab("Treatment Group") + 
  ylab("Length (cm)")