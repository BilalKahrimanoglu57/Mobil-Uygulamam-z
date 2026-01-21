import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:zorbalik_uygulamasi/Ekranlar/KayitOlmaEkrani.dart';
import 'package:zorbalik_uygulamasi/Ekranlar/GirisYapmaEkrani.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: 180,
              width: double.infinity,
              color: const Color(0xFF20BAD8),
              child: Opacity(
                opacity: 0.12,
                child: Image.asset("assets/dalgaSekil.png", fit: BoxFit.cover),
              ),
            ),
          ),
          Image.asset("assets/team.png", height: 250, width: 250),
          Expanded(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Geleceğe", style: TextStyle(color: Color(0xFF20BAD8), fontSize: 46, fontWeight: FontWeight.bold)),
                    const Text("Güvenle", style: TextStyle(color: Color(0xFFE5A000), fontSize: 46, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 16),
                    const Text(
                      "Siber zorbalıkla başa çıkmanın yollarını keşfet. Kendine güven ve daha güçlü ol.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                      width: double.infinity,
                      height: 72,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const KayitOlmaEkrani()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF20BAD8),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
                        ),
                        child: const Text("ARAMIZA KATIL", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Hesabın var mı? ", style: TextStyle(fontSize: 18, color: Colors.black54)),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const GirisYapmaEkrani()));
                          },
                          child: const Text("Giriş Yap", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF002BFF))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}