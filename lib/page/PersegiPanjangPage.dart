
import 'package:bangun_datar_kelas_c/controller/persegi_panjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({super.key});
  final PersegiPanjangController _persegipanjangController=Get.put(PersegiPanjangController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Persegi Panjang Page"),
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/persegi panjang.jpg",
              ),
              Padding(padding: const EdgeInsets.all(8.0),
                child: Text("Persegi Panjang"),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.green.shade400,
                ),
                child: Text(
                    "Persegi panjang merupakan bangun datar yang memiliki dua pasang sisi sama panjang dan sejajar serta besar semua sudutnya adalah 90⁰ atau berbentuk siku-siku."
                        "Persegi panjang termasuk ke dalam sebuah bentuk geometri dua dimensi yang terdiri dari empat sisi. Dua sisi yang berlawanan memiliki panjang yang sama, "
                        "sedangkan dua sisi lainnya juga memiliki panjang yang sama, tetapi panjangnya berbeda dengan dua sisi pertama. Dengan kata lain, "
                        "persegi panjang memiliki dua pasang sisi sejajar yang panjangnya berbeda."
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
                      child:
                      TextFormField(
                        onChanged: (value){
                          _persegipanjangController.panjang = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Panjang",
                          hintText: "Masukkan Panjang",
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
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.greenAccent.shade400,),
                child: Column(
                  children: [
                    Padding
                      (padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                      child:
                      TextFormField(
                        onChanged: (value){
                          _persegipanjangController.lebar = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Lebar",
                          hintText: "Masukkan Lebar",
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
                            _persegipanjangController.hitungkeliling();
                          }, child: Text("Hitung Keliling")),
                          ElevatedButton(onPressed: (){
                            _persegipanjangController.hitungluas();
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
            child: Obx(() => Text(_persegipanjangController.hasil.value)),
          ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}