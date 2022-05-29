### Nomor 1
#a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel
xy <- c(100-78, 95-75, 70-67, 90-77, 90-70, 89-78, 90-74, 100-77)
result.mean <- mean (xy)
diff <- xy - mean(xy)
diffsquared <- diff^2
variance <- sum(diff^2)/(9-1)
std_dev <- sqrt(variance)
print(std_dev)

#b. carilah nilai t (p-value)
#rata-rata data sampel sebelum (x)
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
result.mean <- mean(x)
diffx <- x - mean(x)
diffxsq <- diffx^2
varx <- sum(diffx^2)/(9-1)
std_devx <- sqrt(varx)

#rata-rata data sampel sesudah (y)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
result.mean <- mean(y)
diffy <- y - mean(y)
diffysq <- diffy^2
vary <- sum(diffy^2)/(9-1)
std_devy <- sqrt(vary)

res <- t.test(x, y, paired = TRUE)
res

#c   
if(res$p.value > 0.05){
  print("Tolak H0 : ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas A")
}else{
  print("Gagal tolak H0 : tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas A")
}



###Nomor 2
#a.
#H0 : rata-rata kemudi mobil > 20000 km per tahun
#H1 : rata-rata kemudi mobil < 20000 km per tahun

Z <- (23500 - 20000)/(3900/sqrt(100))
Z

pval <- pnorm(q=Z, mean = 0, sd=1, lower.tail=TRUE)

p <- 1-pval
p

#b.
p-value yaitu besarnya peluang dari statistik uji yang dihasilkan. 

#c. 
if(p < 0.05){
  print("Tolak H0 : rata-rata kemudi mobil < 20000 km per tahun")
}else{
  print("Tolak H1 : rata-rata kemudi mobil > 20000 km per tahun")
}


### Nomor 3
#a. 
# H0 : Rata-rata Bandung = Rata-rata Bali
# H1 : Rata-rata Bandung != Rata-rata Bali

#b.
Sp <- (((19-1)*1.67) + ((27-1)*1.32))/((19-1)+(27-1))
Sp

t <- (3.64 - 2.79)/sqrt(Sp*((1/19)+(1/27)))
t

#c.
pt(t,2)

#d.
qt(.05,2)

#e
Terima H0 yaitu rata-rata bandung = rata-rata bali

#f
rata-rata bandung != rata-rata bali


### Nomor 4
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

### Nomor 5
GTL <- read.csv("C:/Users/PC/Downloads/Probstat/Praktikum 2/GTL.csv", header = T)
head(GTL)

#a
qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)

#b. uji anova dua arah
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

#c
install.packages("magrittr")
install.packages("dplyr")
library(magrittr)
library(dplyr)
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

#d. uji tukey
tukey <- TukeyHSD(anova)
print(tukey)

#e
install.packages("multcompView")
library(multcompView)
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)