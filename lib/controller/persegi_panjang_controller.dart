import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int panjang = 0;
  int lebar = 0;
  final hasil ="".obs;

  void hitungluas(){
    int hitung = panjang * lebar;
    hasil.value = "Hasil :\n Perhitungan luas dari $panjang x $lebar \n adalah $hitung ";
  }

  void hitungkeliling(){
    int hitung = 2 * (panjang+lebar);
    hasil.value = "Hasil Perhitungan luas dari $panjang dan $lebar adalah $hitung ";
  }
}