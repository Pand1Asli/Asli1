import 'package:bangun_datar_kelas_c/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({super.key});
  final LingkaranController _lingkaranController=Get.put(LingkaranController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lingkaran Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/lingkaran.jpg",
            ),
            Padding(padding: const EdgeInsets.all(8.0),
              child: Text("Lingkaran"),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.green.shade400,
              ),
              child: Text(
                  "Lingkaran adalah tempat kedudukan titik-titik yang berjarak sama dengan satu titik tertentu.  "
                      "Yang dimaksud titik tertentu adalah titik pusat lingkaran, sedangkan jarak yang sama adalah jari-jari lingkaran. "
                      "Nah, sebelum kita membahas mengenai keliling dan luas lingkaran, Sobat Pintar perlu tahu terlebih dahulu mengenai unsur-unsur dari lingkaran."
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.greenAccent.shade400,),
              child: Column(
                children: [
                  Padding
                    (padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                    child: TextFormField(
                      onChanged: (value){
                        _lingkaranController.r = int.parse(value);
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Jari-Jari",
                        hintText: "Masukkan jari-Jari",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: (){
                          _lingkaranController.hitungkeliling();
                        }, child: Text("Hitung Keliling")),
                        ElevatedButton(onPressed: (){
                          _lingkaranController.hitungluas();
                        }, child: Text("Hitung Luas")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.orange.shade400,
              ),
              child: Obx(() => Text(_lingkaranController.hasil.value)),
            ),
          ],
        ),
      ),
    );
  }
}