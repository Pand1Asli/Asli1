import 'package:bangun_datar_kelas_c/page/LingkaranPage.dart';
import 'package:bangun_datar_kelas_c/page/PersegiPage.dart';
import 'package:bangun_datar_kelas_c/page/PersegiPanjangPage.dart';
import 'package:bangun_datar_kelas_c/page/SegitigaPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.blue.shade300,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
                    },
                    child: CustomMenu(title: "Persegi", imageAsset: "assets/persegi.jpg"))),

                Expanded(child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPanjangPage()));
                    },
                    child: CustomMenu(title: "Persegi Panjang", imageAsset: "assets/persegi panjang.jpg"))),
              ],
            ),
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SegitigaPage()));
                      },
                      child: CustomMenu(title: "Segitiga", imageAsset: "assets/segitiga.jpg"))),
                  Expanded(child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LingkaranPage()));
                      },
                      child: CustomMenu(title: "Lingkaran", imageAsset: "assets/lingkaran.jpg"))),
                ],
              ),
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.title, required this.imageAsset
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.blue.shade400,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageAsset,height: 58,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,style: TextStyle(color: Color(0xFFFFFFFF)),),
          ),
        ],
      ));
  }
}
