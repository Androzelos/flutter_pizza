import 'package:flutter/material.dart';
import 'package:proje_iki/oyun_ekrani.dart';
import 'package:proje_iki/kisiler.dart';

int sayac = 0;

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  sayacArtir(){
    setState(() {
      sayac++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sayaç"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç: $sayac"),
            ElevatedButton(onPressed: sayacArtir, child: const Text("Tıkla")),
            ElevatedButton(onPressed: (){
              var vejdet = Kisiler(ad: "Vejdet", yas: 21, boy: 1.78, bekar: true);
              Navigator.push(context, MaterialPageRoute(builder: (context) => OyunEkrani(kisi: vejdet,)));
            }, child: const Text("Başla"))
          ],
        ),
      ),
    );
  }

}
