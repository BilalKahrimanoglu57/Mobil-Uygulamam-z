import 'package:flutter/material.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- ÜST PROFİL VE LOGO ALANI ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/profil_resmi.png'), // Profil resmi yolu
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Tekrar Hoşgeldin,", style: TextStyle(color: Colors.grey, fontSize: 14)),
                          Text("afacanYigit01", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey[800])),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/encrypted.png', width: 40, height: 40),
                      const SizedBox(width: 8),
                      const Text(" Güvenli\n Adım", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // --- FARKINDALIK SEVİYESİ KARTI ---
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Farkındalık Seviyen", style: TextStyle(fontSize: 16, color: Colors.black54)),
                            SizedBox(height: 8),
                            Text("%60", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Icon(Icons.trending_up, color: Colors.cyan[400], size: 40),
                      ],
                    ),
                    const SizedBox(height: 15),
                    LinearProgressIndicator(
                      value: 0.6,
                      backgroundColor: Colors.grey[200],
                      color: const Color(0xFF20BAD8),
                      minHeight: 10,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Image.asset('assets/approved.png', width: 24, height: 24), //burada profil fotoğrafı eklemedik
                        const SizedBox(width: 8),
                        const Text("Harika gidiyorsun , böyle devam et !", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              const Text("Birlikte İnceleyebileceğimiz Konular", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),

              // --- ANA BUTONLAR (SENARYO, HİKAYE, VİDEO) ---
              _anaButon(
                baslik: "Senaryo Çöz",
                altBaslik: "Gerçek yaşam durumlarına çözümler bul",
                ikon: Image.asset('assets/puzzle.png', width: 40, height: 40),
                renk: const Color(0xFFDDE1FF),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: _kareButon(
                      baslik: "Hikaye Oku",
                      ikon: Icons.menu_book_rounded,
                      renk: const Color(0xFFE5A000),
                      arkaPlanResmi: "assets/books.png",
                      sisli: true,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: _kareButon(
                      baslik: "Video İzle",
                      ikon: Icons.play_circle_outline,
                      renk: const Color(0xFFB71C1C),
                      arkaPlanResmi: "assets/img_1.png",
                      sisli: true,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              const Text("Bugün Senin İçin Önerilenler", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),

              // --- ÖNERİ KARTLARI ---
              _oneriKarti("Yeni Senaryo", "Okul Kantininde Bir Gün", "Sıra beklerken yaşanan bir anlaşmazlığı nasıl çözersin?", Colors.green),
              const SizedBox(height: 15),
              _oneriKarti("Yeni Animasyon", "Akran Zorbalığı İle Baş Etme Yolları", "Akran zorbalığı ile nasıl baş edebileceğine dair çözümler.", Colors.green),
            ],
          ),
        ),
      ),
    );
  }

  // Geniş Buton Tasarımı (Senaryo Çöz)
  Widget _anaButon({required String baslik, required String altBaslik, required Widget ikon, required Color renk}) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: renk, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          ikon,
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(baslik, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(altBaslik, style: const TextStyle(fontSize: 13, color: Colors.black54)),
            ],
          ),
        ],
      ),
    );
  }

  // Kare Buton Tasarımı (Hikaye ve Video)
  Widget _kareButon({required String baslik, required IconData ikon, required Color renk, String? arkaPlanResmi, bool sisli = false}) {
    return Container(
      height: 100,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: arkaPlanResmi == null ? renk : null,
        borderRadius: BorderRadius.circular(20),
        image: arkaPlanResmi != null
            ? DecorationImage(
                image: AssetImage(arkaPlanResmi),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(renk.withOpacity(0.7), sisli ? BlendMode.multiply : BlendMode.overlay),
              )
            : null,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Icon(ikon, color: Colors.white.withOpacity(0.9), size: 45),
          Positioned(
            bottom: 12,
            child: Text(
              baslik,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Alt Öneri Kartları
  Widget _oneriKarti(String etiket, String baslik, String icerik, Color etiketRenk) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.60),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(etiket, style: TextStyle(color: etiketRenk, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(baslik, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(icerik, style: const TextStyle(color: Colors.black54, fontSize: 13)),
        ],
      ),
    );
  }
}
