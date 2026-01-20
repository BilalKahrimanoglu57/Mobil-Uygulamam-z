import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // 🌊 DALGALI ÜST ALAN
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: 180,
              width: double.infinity,
              color: const Color(0xFF20BAD8),
              child: Opacity(
                opacity: 0.12, // %10–15 arası sweet spot
                child: Image.asset(
                  "assets/dalgaSekil.png",
                  width: 1900,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Image.asset("assets/team.png", height: 250, width: 250),
          Expanded(
            child: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 12),

                      Text(
                        "Geleceğe",
                        style: TextStyle(
                          color: Color(0xFF20BAD8),
                          fontSize: 46,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Güvenle",
                        style: TextStyle(
                          color: Color(0xFFE5A000),
                          fontSize: 46,
                          fontWeight: FontWeight.w800,
                        ),
                      ),

                      const SizedBox(height: 16),

                      Text(
                        "Siber zorbalık ve akran baskısıyla başa çıkmanın yollarını keşfet."
                        "Kendine güven, sınırlarını koru ve daha güçlü ol.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.5,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),

                      const SizedBox(height: 32),

                      SizedBox(
                        width: double.infinity,
                        height: 72,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF20BAD8),
                            foregroundColor: Colors.white,
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                          child: const Text(
                            "ARAMIZA KATIL",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.4,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hesabın var mı?",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Giriş Yap",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF002BFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
