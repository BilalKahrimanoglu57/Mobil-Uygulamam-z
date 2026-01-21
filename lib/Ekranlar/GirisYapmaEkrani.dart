import 'package:flutter/material.dart';

class GirisYapmaEkrani extends StatelessWidget {
  const GirisYapmaEkrani({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              // --- GERİ DÖN BUTONU ---
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
                  label: const Text(
                    "Geri Dön",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // --- ÜST BAŞLIK ---
              const Text(
                "KALDIĞIN YERDEN",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.2,
                ),
              ),
              const Text(
                "DEVAM ET",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),

              // --- ANA KARAKTER GÖRSELİ ---
              Center(
                child: Image.asset(
                  'assets/boy.png', // pubspec.yaml'da tanımlı olduğundan emin ol Kağan
                  height: 180,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 25),

              // --- SELAMLAMA METNİ ---
              const Text(
                "Tekrardan Merhaba 👋",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Kaldığın yerden devam etmek için\nHazır mısın ?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 40),

              // --- GİRİŞ ALANI ---
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Kullanıcı Adın",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Örn: afacanYigit01",
                  hintStyle: const TextStyle(color: Colors.black26),
                  prefixIcon: const Icon(Icons.face, color: Color(0xFF20BAD8)),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Color(0xFF20BAD8), width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Seni tanıdığımız ismini yazman yeterli",
                style: TextStyle(fontSize: 12, color: Colors.black38),
              ),
              const SizedBox(height: 45),

              // --- GİRİŞ YAP BUTONU ---
              SizedBox(
                width: double.infinity,
                height: 65,
                child: ElevatedButton(
                  onPressed: () {
                    // Giriş mantığı buraya
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF20BAD8),
                    foregroundColor: Colors.white,
                    elevation: 5,
                    shadowColor: const Color(0xFF20BAD8).withOpacity(0.4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "GİRİŞ YAP",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // --- ALT BAĞLANTI ---
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Henüz Bir Hesabın Yok mu? ",
                    style: TextStyle(color: Colors.black45),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Kayıt ekranına yönlendir
                    },
                    child: const Text(
                      "Hesap Oluştur",
                      style: TextStyle(
                        color: Color(0xFF002BFF),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}