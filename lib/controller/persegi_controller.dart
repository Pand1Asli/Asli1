import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil ="".obs;

  void hitungluas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan luas dari $sisi x $sisi adalah $hitung ";
  }

  void hitungkeliling(){
    int hitung = sisi * 4;
    hasil.value = "Hasil Perhitungan Keliling dari $sisi x 4 adalah $hitung ";
  }
}