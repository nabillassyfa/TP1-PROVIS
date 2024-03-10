// TP1 PROVIS
// Nabilla Assyfa Ramadhani
// 2205297

import 'dart:async';

class Toko {
  String kode;
  String nama;
  String alamat;
  List <String> produk = [];

  // Construktor
  Toko(this.kode, this.nama, this.alamat, this.produk);

  //Metode get set atribut toko
  //get dan set kode
  void setKode (kode){
    this.kode = kode;
  }

  String getKode (){
    return this.kode;
  }

  //get dan set nama toko
  void setNama (nama){
    this.nama = nama;
  }

  String getNama (){
    return this.nama;
  }

  // get dan set alamat toko
  void setAlamat (alamat){
    this.alamat = alamat;
  }

  String getAlamat (){
    return this.alamat;
  }

  //get dan set produk
  void setProduk (produk){
    this.produk.add(produk);
  }

  List <String> getProduk (){
    return this.produk;
  }

  // Asynchronous cetak data toko
  Future<void> CetakData() async{
    print ("Kode        : " + this.kode);
    print ("Nama Toko   : " + this.nama);
    print ("Alamat Toko : " + this.alamat);
  }

  Future<void> cariProduk(String namaProduk) async {
    print('Mencari produk $namaProduk di toko $nama...');
    await Future.delayed(Duration(seconds: 2)); // Simulasi pencarian
    if (produk.contains(namaProduk)) {
      print('$namaProduk ditemukan di toko $nama!');
    } else {
      print('$namaProduk tidak ditemukan di toko $nama.');
    }
  }
}