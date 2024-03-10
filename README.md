# TUGAS PRAKTIKUM 1 PROVIS
#### Nabilla Assyfa Ramadhani [2205297]

Program ini dibuat untuk mengimplementasi OOP dan asynchronous dalam pencarian barang di Toko.

## Implementasi OOP
OOP dalam program ini di implementasikan dalam 2 buah kelas, yakni kelas Toko dan kelas Penjual. Kelas
Toko memiliki hubungan composite dengan kelas Penjual. <br>
### Kelas Toko
1. Atribut yang digunakan :<br>
   a. Kode : Atribut ini digunakan untuk menampung kode toko<br>
   b. Nama : Atribut ini digunakan untuk menampung nama toko<br>
   c. Alamat : Atribut ini digunakan untuk menampung alamat toko<br>
   d. Data Produk : Atribut ini digunakan untuk menampung produk yang dijual di toko<br>
2. Kelas ini memiliki metode sebagai berikut :<br>
   a. Konstruktor  : Metode konstruktor digunakan untuk menginisialisasi objek ketika dibuat. <br>
   b. Getter       : Metode getter digunakan untuk mendapatkan nilai dari atribut tertentu. <br>
   c. Setter       : Metode setter digunakan untuk mengatur nilai atribut tertentu. <br>
   d. CetakData    : Metode ini digunakan untuk mencetak data, metode ini menggunakan async, tetapi tidak menggunakan await karena tidak ada operasi yang memerlukan waktu yang signifikan untuk menunggu.<br>
   e. CariProduk   : Metode ini digunakan untuk mencari produk, Proses pencarian dilakukan dengan simulasi waktu tunggu menggunakan await Future.delayed(). untuk mencari produk.<br>

### Kelas Penjual
1. Atribut yang digunakan :<br>
   a. NIK : Atribut ini digunakan untuk menampung NIK penjual<br>
   b. Nama : Atribut ini digunakan untuk menampung nama toko<br>
   c. Toko : Atribut ini digunakan untuk menampung data toko yang dimiliki.<br>
2. Kelas ini memiliki metode sebagai berikut :<br>
   a. Konstruktor  : Metode konstruktor digunakan untuk menginisialisasi objek ketika dibuat. <br>
   b. Getter       : Metode getter digunakan untuk mendapatkan nilai dari atribut tertentu. <br>
   c. Setter       : Metode setter digunakan untuk mengatur nilai atribut tertentu. <br>
   d. CetakData    : Metode ini digunakan untuk mencetak data, metode ini menggunakan async, tetapi tidak menggunakan await karena tidak ada operasi yang memerlukan waktu yang signifikan untuk menunggu.<br>
   e. CariProduk   : Metode ini digunakan untuk mencari produk, Proses pencarian dilakukan dengan simulasi waktu tunggu menggunakan await Future.delayed(). untuk mencari produk.<br>

## Implementasi Asynchronous
Pada program ini asynchronous digunakan dalam
metode untuk mencari Produk, Implementasi asynchronous terjadi pada bagian penundaan menggunakan await Future.delayed(Duration(seconds: 2)). Di sini, program akan mensimulasikan proses pencarian dengan menunggu selama 2 detik.
Penggunaan asynchronous memungkinkan program untuk tetap responsif saat menunggu hasil pencarian. Tanpa asynchronous, operasi pencarian akan memblokir eksekusi program dan membuatnya tidak responsif.
Setelah penundaan selesai, metode melanjutkan untuk memeriksa apakah produk yang dicari ada dalam daftar produk toko. Hasil pencarian kemudian dicetak.
selain metode CariBarang, asynchronous juga digunakan dalam CetakData(), untuk memudahkan dalam penambahan operasi asynchronous dimasa depan
tanpa perlu mengubah metode lain.<br>

## Dokumentasi Program
### Proses Asynchronous mencari barang
![alt text](https://github.com/nabillassyfa/TP1-PROVIS/blob/main/Screenshot/Asynchronous%20mencari%20data.png)
### Ouput yang dihasilkan
![alt text](https://github.com/nabillassyfa/TP1-PROVIS/blob/main/Screenshot/Output.png)
