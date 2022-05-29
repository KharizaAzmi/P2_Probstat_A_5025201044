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

