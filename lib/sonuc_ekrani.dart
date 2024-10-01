import 'package:flutter/material.dart';
import 'package:proje_iki/anasayfa.dart';
import 'package:proje_iki/oyun_ekrani.dart';

class SonucEkrani extends StatefulWidget {
  const SonucEkrani({super.key});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sonuç Ekranı"), backgroundColor: Colors.green,
        leading: IconButton(onPressed: (){}, icon: Container()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              sayac = 0;
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Anasayfa())).then((value) => setState(() {

              }));
            }, child: const Text("Anasayfaya Geri Dön"))
          ],
        ),
      ),
    );
  }
}
