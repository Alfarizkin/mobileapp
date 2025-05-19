import 'package:flutter/material.dart';
import 'prestasi_screen.dart'; // Pastikan import ini sesuai path kamu

class HimpunanScreen extends StatelessWidget {
  const HimpunanScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> himpunanList = const [
    {
      'imagePath': 'assets/images/himpunan_mmb.jpg',
      'title': 'Himpunan Mahasiswa MMB',
    },
    {
      'imagePath': 'assets/images/criativa.jpg',
      'title': 'Criativa',
    },
    {
      'imagePath': 'assets/images/iradio.jpg',
      'title': 'iRadio',
    },
    {
      'imagePath': 'assets/images/sineas_multimedia.jpg',
      'title': 'Sineas Multimedia Broadcasting',
    },
    {
      'imagePath': 'assets/images/desgraf.jpg',
      'title': 'Desgraf',
    },
  ];

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF0F2D52);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header biru dengan logo dan nama prodi
            Container(
              width: double.infinity,
              color: primaryColor,
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/logo_pens.png',
                    height: 48,
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Text(
                        'PROGRAM STUDI\nTEKNOLOGI MULTIMEDIA DAN BROADCASTING',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // List organisasi/unit kemahasiswaan
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                itemCount: himpunanList.length,
                itemBuilder: (context, index) {
                  final item = himpunanList[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 18),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(22),
                            bottomLeft: Radius.circular(22),
                          ),
                          child: Image.asset(
                            item['imagePath']!,
                            width: 110,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              item['title']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Tombol "Lihat Prestasi Mahasiswa" dengan navigasi
            Padding(
              padding: const EdgeInsets.only(bottom: 18),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PrestasiScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  elevation: 0,
                ),
                child: const Text(
                  'Lihat Prestasi Mahasiswa',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
