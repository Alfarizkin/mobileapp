import 'package:flutter/material.dart';
import '../models/gallery_item.dart';
import 'gallery_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List galeri kegiatan
    final List<GalleryItem> galleryItems = [
      GalleryItem(
        imageUrl: 'assets/images/gallery1.jpg',
        title: 'Kegiatan 1',
      ),
      GalleryItem(
        imageUrl: 'assets/images/gallery2.jpg',
        title: 'Kegiatan 2',
      ),
      GalleryItem(
        imageUrl: 'assets/images/gallery3.jpg',
        title: 'Kegiatan 3',
      ),
      GalleryItem(
        imageUrl: 'assets/images/gallery4.jpg',
        title: 'Kegiatan 4',
      ),
      GalleryItem(
        imageUrl: 'assets/images/gallery5.jpg',
        title: 'Kegiatan 5',
      ),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header dengan Logo PENS
            Container(
              color: const Color(0xFF0F2D52),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/logo_pens.png',
                    height: 50,
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PROGRAM STUDI',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'TEKNOLOGI MULTIMEDIA DAN BROADCASTING',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            // Gloria Criativa Banner
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Image.asset(
                  'assets/images/gloria_criativa.jpg',
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.purple.withOpacity(0.6),
                    ),
                    child: const Text(
                      'GLORIA CRIATIVA',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            // Program Description
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Program studi D3 Teknologi Multimedia dan Broadcasting merupakan salah satu program studi di bawah naungan Departemen Teknologi Multimedia Kreatif - PENS. Prodi ini dikenal juga dengan sebutan D3 MMB. Melalui pendidikan di program studi D3 Teknologi Multimedia dan Broadcasting mahasiswa akan mendapatkan pengetahuan tentang elektronika umum, sistem pemancar radio dan televisi, sistem studio siaran radio dan TV, tools untuk pengembangan konten multimedia seputar animasi 2D/3D, editing foto/video, penggunaan kamera, lighting, dan untuk segi broadcasting-nya melalui jaringan internet. Lulusan dari program studi D3 MMB akan mampu terlibat dalam pekerjaan terkait pengoperasikan dan pemeliharaan fasilitas broadcasting dan peralatan-peralatan di stasiun pemancar radio ataupun televisi, atau di industri media yang lain.',
                style: const TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            
            // Studio Image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/studio_image.jpg',
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            // Galeri
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Galery',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Kegiatan Mahasiswa MMB',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // Gallery Items - Horizontal Scrolling
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: galleryItems.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              galleryItems[index].imageUrl,
                              width: 250,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  
                  const SizedBox(height: 20),
                  
                  // Lihat Gallery Button
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const GalleryScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0F2D52),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: const Text(
                        'Lihat Gallery',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  
                  // Space at the bottom for safe scrolling
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
