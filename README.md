# P2_Probstat_A_5025201044
## Nama : Khariza Azmi Alfajira Hisyam

## Nomor 1
###### A)
Menghitung standar deviasi dari selisih data menggunakan perhitungan eksak<br/>
![image](https://user-images.githubusercontent.com/72921762/170873858-d04676ac-a7b3-478a-9926-03aabf9aebd8.png)

###### B)
Menyimpan data x <br/>
![image](https://user-images.githubusercontent.com/72921762/170874476-c7e74d70-4d60-4394-8e92-b13edd7d0365.png) <br/>

Menyimpan data y<br/>
![image](https://user-images.githubusercontent.com/72921762/170875004-712266f1-bf17-4c63-a7b1-0820ee0c0428.png) <br/>

Menggunakan fungsi t test dengan parameter data paired TRUE <br/>
![image](https://user-images.githubusercontent.com/72921762/170875249-112ab34e-84e8-407f-87d9-6320f1c7826b.png) <br/>

###### C)
Mengambil kesimpulan dengan membandingkan hasil t dengan nilai alfa 0.05 sebagaimana diketahui dalam soal <br/>
![image](https://user-images.githubusercontent.com/72921762/170875798-fd9a0953-d650-4cc3-8848-4c6ae41aa148.png) <br/>

## Nomor 2
###### A)
Mendefinisikan H0 dan H1 terlebih dahulu <br/> 
![image](https://user-images.githubusercontent.com/72921762/170876212-2a554898-d683-4bfb-a362-48c2a8d8613c.png) <br/>
Mencari nilai Z kemudian mencari nilai p-value <br/>
![image](https://user-images.githubusercontent.com/72921762/170876388-afd177d4-c766-415d-b78e-fc722aae9664.png) <br/>

###### B)
Menjelaskan maksud dari p-value <br/>
![image](https://user-images.githubusercontent.com/72921762/170876490-c589f748-3006-4ca7-b15c-e788bdb4c9bf.png) <br/>

###### C)
Kesimpulan dari p-value yang dihasilkan, dibandingkan dengan nilai alfa default 0.05 <br/>
![image](https://user-images.githubusercontent.com/72921762/170876712-317097fb-c515-450a-bb67-e7516967e470.png) <br/>

## Nomor 3
###### A)
Mendefinisikan H0 dan H1 <br/>
![image](https://user-images.githubusercontent.com/72921762/170876990-6f861ff1-568a-4085-ba1b-09791642beb8.png) <br/>

###### B) 
Mencari Poold Sample variance terlebih dahulu kemudian nilai tersebut digunakan untuk mencari t dengan rumus![image](https://user-images.githubusercontent.com/72921762/170877767-29b0f52f-d672-48c1-b1c6-7ff8f40017ab.png) <br/>
 
![image](https://user-images.githubusercontent.com/72921762/170877085-0cb2e0ee-7fff-4d49-8a54-3299bcd39377.png) <br/>

###### C)
Melakukan uji statistik berdasarkan hasil t dan df=2 dengan fungsi bawaan r<br/>
![image](https://user-images.githubusercontent.com/72921762/170877813-e8fd8e0e-5007-4974-b541-62f6b51180d0.png) <br/>

###### D)
Mencari nilai kritikal dari t-value yang telah dihitung sebelumnya dengan fungsi bawaan r
![image](https://user-images.githubusercontent.com/72921762/170878085-7f154e0f-bdd6-4894-be2c-be0c20cd864d.png) <br/>

###### E)
Karena nilai t-value lebih dari 0.05 maka <br/>
![image](https://user-images.githubusercontent.com/72921762/170878418-dfca3532-96d0-420b-8799-c08e974d62fa.png) <br/>

###### F)
Kesimpulan yang didapat dari poin E <br/>
![image](https://user-images.githubusercontent.com/72921762/170878573-b4e043b4-0d4c-4c9e-990c-437db2c5ea6e.png) <br/>

## Nomor 4
###### A)
Membaca data dari url yang diberikan kemudian mengkategorikan/Faktor “Group” <br/>
![image](https://user-images.githubusercontent.com/72921762/170878815-1887a740-0d3b-4c6f-b23a-f9badaa7475e.png) <br/>
Buat Grup1, Grup2, dan Grup3, sebagai 3 subjek "Group".<br/>
![image](https://user-images.githubusercontent.com/72921762/170879285-549391ad-6725-4207-b996-28a4b7c858c6.png) <br/>

Menggambarkan plot kuantil normal untuk tiap grup <br/>
*Grup 1*
![image](https://user-images.githubusercontent.com/72921762/170879465-d1c76c49-3922-4d60-8e29-19db72a7bb22.png) <br/>
![image](https://user-images.githubusercontent.com/72921762/170879630-bfe8f7a4-a769-4041-bbed-d66e538c9d55.png) <br/>

*Grup 2*
![image](https://user-images.githubusercontent.com/72921762/170879760-b27dd41f-43c7-4e32-872a-c7c4117d38a5.png) <br/>
![image](https://user-images.githubusercontent.com/72921762/170879798-49781f13-7770-45a4-b867-c88f0f65c885.png) <br/>

*Grup 3*
![image](https://user-images.githubusercontent.com/72921762/170879827-bdea8a2f-3514-42ca-bf33-de4cec6c6264.png) <br/>
![image](https://user-images.githubusercontent.com/72921762/170879860-c1afd7e4-1fc9-4f3c-a7fe-6382dc72ac10.png) <br/>

Memeriksa homogenitas variance menggunakan barlett test <br/> 
![image](https://user-images.githubusercontent.com/72921762/170879899-ea04a2f8-a735-482f-a74b-756b628f4b26.png) <br/>

###### B)
Mencari kesimpulan menggunakan p-value yang didapat dari barlett test sebelumnya <br/>
![image](https://user-images.githubusercontent.com/72921762/170880072-967b09d3-036c-4fd0-8a05-c385670f8284.png) <br/>

###### C)
Untuk uji ANOVA, buat model linier dengan Panjang versus Grup dan beri nama variabel model1<br/>
![image](https://user-images.githubusercontent.com/72921762/170880197-a4081e4c-055c-4f18-b3d3-0b5b7071e5c5.png) <br/>

###### D)
Menyimpulkan berdasarkan nilai p yang didapat dari uji ANOVA sebelumnya <br/>
![image](https://user-images.githubusercontent.com/72921762/170880341-3af61072-4255-4e99-bffb-a834cac80f43.png) <br/>

###### E)
Kita belum dapat mengetahui spesies mana yang lebih panjang dari yang lain. Maka digunakan uji Post-hoc TukeyHSD <br/>
![image](https://user-images.githubusercontent.com/72921762/170880467-2cab2a7e-13ba-4fbf-80c0-18d04c3f297d.png) <br/>

###### F)
Memvisualisasikan data dengan ggplot <br/>
![image](https://user-images.githubusercontent.com/72921762/170880603-abcae369-9744-4368-a3bf-1a0dd0e4c83d.png) <br/>
![image](https://user-images.githubusercontent.com/72921762/170880632-4eddd04b-760b-4ffc-82e8-0404345c3893.png) <br/>

## Nomor 5
###### A)
Membaca data csv dari data yg disediakan di soal <br/>
![image](https://user-images.githubusercontent.com/72921762/170880693-ddc69127-a8a2-4431-9416-8c5b5cbbb998.png) <br/>
Menggambarkan dengan qplot <br/>
![image](https://user-images.githubusercontent.com/72921762/170880794-92b4cf1c-27a9-47ea-8214-7bbd28d2855f.png) <br/>
![image](https://user-images.githubusercontent.com/72921762/170880854-912e7a5b-8d90-41d2-8492-47635017af8e.png) <br/>

###### B)
Melakukan uji ANOVA 2 arah dari data GTL kemudikan mengaktegorikan data dengan nama "Glass"<br/>
![image](https://user-images.githubusercontent.com/72921762/170880915-0085ddfc-7b60-46a8-af22-2675cf376fdf.png) <br/>
![image](https://user-images.githubusercontent.com/72921762/170881028-fa2c872d-b1a2-48cf-9924-de36f9981187.png) <br/>

###### C)
![image](https://user-images.githubusercontent.com/72921762/170881141-a4936e20-7552-4b3d-b20a-4d6dd1b34e24.png) <br/>
Mencetak tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan. Menggunakan library dplyr <br/>
![image](https://user-images.githubusercontent.com/72921762/170881201-2bfb4b83-bc0b-416d-9541-20551798a3c6.png) <br/>

###### D)
Melakukan uji tukey ANOVA <br/>
Perbandingan rata-rata dengan uji Tukey dapat dijalankan pada objek yang dihasilkan dari analisis varians. Hasilnya adalah tabel ekstensif dengan semua perbandingan berpasangan dan -nilai untuk masing-masingnya. Namun, data ini bisa sulit untuk ditafsirkan, dan biasanya menggunakan huruf untuk menunjukkan perbedaan yang signifikan di antara rata-rata.
![image](https://user-images.githubusercontent.com/72921762/170881338-76775df9-f7ec-4933-9c90-41993771132c.png) <br/>
![image](https://user-images.githubusercontent.com/72921762/170881408-85a362d9-2f21-407a-bf94-a80ed8632f0d.png) <br/>

###### E)
Penggunaan huruf untuk menunjukkan perbedaan yang signifikan dalam perbandingan berpasangan, juga disebut compact letter display, dan dapat menyederhanakan visualisasi dan pembahasan perbedaan yang signifikan antar sarana. Kita dapat menggunakan fungsi multcompLetters4() dari paket multcompView. <br/>
![image](https://user-images.githubusercontent.com/72921762/170881783-626080c5-66d9-42e3-b9db-a3439c95d2b3.png) <br/>
![image](https://user-images.githubusercontent.com/72921762/170881846-7f55339d-a0ee-4b29-bbdd-df53a0c69412.png) <br/>

