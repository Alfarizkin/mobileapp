import 'package:flutter/material.dart';

class FasilitasScreen extends StatelessWidget {
  const FasilitasScreen({Key? key}) : super(key: key);

  // List data fasilitas, ganti imagePath sesuai asset kamu
  final List<Map<String, String>> fasilitasList = const [
    {
      'imagePath': 'assets/images/lab_media_digital.jpg',
      'title': 'Lab. Media Digital',
    },
    {
      'imagePath': 'assets/images/lab_audio_video.jpg',
      'title': 'Lab. Audio Video Production',
    },
    {
      'imagePath': 'assets/images/lab_studio_broadcasting.jpg',
      'title': 'Lab. Studio Broadcasting',
    },
    {
      'imagePath': 'assets/images/lab_desain_multimedia.jpg',
      'title': 'Lab. Desain Multimedia & Produksi',
    },
    {
      'imagePath': 'assets/images/lab_cal.jpg',
      'title': 'Lab. Computer Aided Learning',
    },
    {
      'imagePath': 'assets/images/studio_podcast.jpg',
      'title': 'Studio Podcast',
    },
    {
      'imagePath': 'assets/images/lab_digital_imaging.jpg',
      'title': 'Lab. Digital Imaging',
    },
    {
      'imagePath': 'assets/images/studio_tv_pertunjukan.jpg',
      'title': 'Studio TV Pertunjukan',
    },
    {
      'imagePath': 'assets/images/ruang_mahasiswa.jpg',
      'title': 'Ruang Mahasiswa',
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
            // Header biru
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
            // Fasilitas list scrollable
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                itemCount: fasilitasList.length,
                itemBuilder: (context, index) {
                  final item = fasilitasList[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 18),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(18),
                            bottomLeft: Radius.circular(18),
                          ),
                          child: Image.asset(
                            item['imagePath']!,
                            width: 100,
                            height: 70,
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
                                fontSize: 15,
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
          ],
        ),
      ),
    );
  }
}
