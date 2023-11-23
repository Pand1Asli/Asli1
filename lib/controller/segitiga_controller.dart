import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas = 0;
  int tinggi = 0;
  final hasil ="".obs;

  void hitungluas(){
    int hitung = alas * tinggi;
    hasil.value = "Hasil Perhitungan luas dari alas $alas dan Tinggi $tinggi  adalah $hitung ";
  }

  void hitungkeliling(){
    int hitung = alas * 3;
    hasil.value = "Hasil Perhitungan keliling dari alas $alas adalah $hitung ";
  }
}