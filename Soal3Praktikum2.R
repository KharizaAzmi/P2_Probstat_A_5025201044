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
