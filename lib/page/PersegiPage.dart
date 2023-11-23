import 'package:bangun_datar_kelas_c/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({super.key});
  final PersegiController _persegiController=Get.put(PersegiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Persegi Page"),
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/persegi.jpg",
              ),
              Padding(padding: const EdgeInsets.all(8.0),
                child: Text("Persegi"),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.green.shade400,
                ),
                child: Text(
                    "Persegi merupakan turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku (90°)."
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
                          _persegiController.sisi = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Sisi",
                          hintText: "Masukkan Sisi",
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
                            _persegiController.hitungkeliling();
                          }, child: Text("Hitung Keliling")),
                          ElevatedButton(onPressed: (){
                            _persegiController.hitungluas();
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
            child: Obx(() => Text(_persegiController.hasil.value)),
          ),
          ],
        ),
        ),
    );
  }
}