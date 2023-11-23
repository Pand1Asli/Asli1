import 'package:bangun_datar_kelas_c/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({super.key});
  final SegitigaController _segitigaController=Get.put(SegitigaController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Segitiga Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/segitiga.jpg",
            ),
            Padding(padding: const EdgeInsets.all(8.0),
              child: Text("Segitiga"),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.green.shade400,
              ),
              child: Text(
                  "Segitiga adalah bentuk bangun datar yang memiliki tiga sisi dan tiga sudut dengan panjang atau besar yang sama maupun berbeda-beda."
                      "Segitiga sendiri terbagi menjadi dua jenis, yaitu segitiga yang dilihat berdasarkan sisinya dan segitiga yang dilihat berdasarkan besaran sudutnya."
                      "Jika dilihat berdasarkan sisinya, terdapat tiga jenis segitiga yakni segitiga sama sisi, segitiga sama kaki, dan segitiga sembarang. "
                      "Sementara segitiga lancip, dan segitiga tumpul adalah jenis segitiga jika dilihat dari berdasarkan besaran sudutnya."

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
                        _segitigaController.alas = int.parse(value);
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Alas",
                        hintText: "Masukkan Alas",
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
                              _segitigaController.tinggi = int.parse(value);
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Tinggi",
                              hintText: "Masukkan Tinggi",
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
                                _segitigaController.hitungkeliling();
                              }, child: Text("Hitung Keliling")),
                              ElevatedButton(onPressed: (){
                                _segitigaController.hitungluas();
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
                    child: Obx(() => Text(_segitigaController.hasil.value)),
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