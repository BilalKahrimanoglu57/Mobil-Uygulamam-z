import 'package:flutter/material.dart';
import 'package:zorbalik_uygulamasi/Ekranlar/ana_sayfa.dart';

class KayitOlmaEkrani extends StatefulWidget {
  const KayitOlmaEkrani({super.key});
  @override
  State<KayitOlmaEkrani> createState() => _KayitOlmaEkraniState();
}

class _KayitOlmaEkraniState extends State<KayitOlmaEkrani> {
  String secilenGrup = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                  label: const Text("Geri Dön", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 20),
              const Text("ARAMIZA KATILMAYA VAR MISIN ?", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Image.asset('assets/elEleKarsilama.png', height: 180, fit: BoxFit.contain),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: "Kullanıcı Adı",
                  prefixIcon: const Icon(Icons.face, color: Color(0xFF29B6D1)),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
              const SizedBox(height: 30),
              const Text("Yaş Grubun Hangisi ?", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(child: _yasGrubuKarti("👦👧", "6-12", "cocuk")),
                  const SizedBox(width: 15),
                  Expanded(child: _yasGrubuKarti("🧑‍🎓🧑‍🏫", "13-18", "genc")),
                ],
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AnaSayfa()),
                    );
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF29B6D1), foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                  child: const Text("HADİ BAŞLAYALIM", style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _yasGrubuKarti(String icon, String baslik, String grupAdi) {
    bool secildiMi = secilenGrup == grupAdi;
    return GestureDetector(
      onTap: () => setState(() => secilenGrup = grupAdi),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: secildiMi ? const Color(0xFF29B6D1) : Colors.grey.shade300, width: 2),
        ),
        child: Column(
          children: [
            Text(icon, style: const TextStyle(fontSize: 30)),
            Text(baslik, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}