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