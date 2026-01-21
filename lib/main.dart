
import 'package:flutter/material.dart';
import 'package:zorbalik_uygulamasi/Ekranlar/karsilama_ekrani.dart';
import 'package:zorbalik_uygulamasi/Ekranlar/KayitOlmaEkrani.dart';
import 'package:zorbalik_uygulamasi/Ekranlar/GirisYapmaEkrani.dart';
import 'package:zorbalik_uygulamasi/Ekranlar/ana_sayfa.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Siber Zorbalık Farkındalık',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF20BAD8)),
        useMaterial3: true,
      ),
      home: const HomePages(), // Uygulama Karşılama Ekranı ile açılır
    );
  }
}