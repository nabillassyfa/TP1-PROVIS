// TP1 PROVIS
// Nabilla Assyfa Ramadhani
// 2205297


// import library
import 'Penjual.dart';
import 'Toko.dart';
import 'dart:async';

void main () async{
  // pemasukan data
  final penjual1 = Penjual ('320407123456', 'Pak Budi');
  penjual1.setToko(Toko('T001', 'Toko Sembako', 'JL RE Martadinata no 20', ['Beras', 'Telur','Terigu']));
  penjual1.setToko(Toko('T002', 'Toko Fashion', 'JL AH Nasution No 19', ['Sepatu', 'Celana','T-Shirt']));

  // Menampilkan data penjual
  await penjual1.tampilkanData();

  // Mencari produk di toko
  await penjual1.cariProdukDiToko('Beras');

  print ('Program selesai.');

}