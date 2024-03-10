// TP1 PROVIS
// Nabilla Assyfa Ramadhani
// 2205297

// import library
import 'dart:async';
import 'Toko.dart';

class Penjual{
  String nik;
  String nama;
  List <Toko> toko = [];    // Composite

  // Construktor
  Penjual (this.nik, this.nama);

  // Metode get set untuk setiap atribut
  void setNik (String nik){
    this.nik = nik;
  }

  String getNik (){
    return this.nik;
  }

  //get dan set nama toko
  void setNama (String nama){
    this.nama = nama;
  }

  String getNama (){
    return this.nama;
  }

  // get dan set Toko toko
  void setToko (Toko toko1){
    this.toko.add(toko1);
  }

  List <Toko> getToko (){
    return this.toko;
  }


  // Menampilkan data penjual mengunakan metode asynchronous
  Future<void> tampilkanData() async {
    print('Data Penjual:');
    print('Nama Penjual: $nama');
    print('Daftar toko yang dimiliki  :');
    for (var pemilik in toko) {
      pemilik.CetakData();
    }
    print('');
  }

  // Metode untuk mencari produk secara asynchronous
  Future<void> cariProdukDiToko(String namaProduk) async {
    print('Pencarian produk $namaProduk di toko-toko milik $nama:');
    for (var toko in toko) {
      await toko.cariProduk(namaProduk);
    }
    print('');
  }
}