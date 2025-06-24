import 'package:flutter/material.dart';
import '../widgets/common_header.dart';

class FasilitasScreen extends StatelessWidget {
  const FasilitasScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> fasilitasList = const [
    {
      'imagePath': 'assets/images/lab_media_digital.jpg',
      'title': 'Lab. Media Digital',
      'description': 'Laboratorium untuk pengembangan konten digital modern',
    },
    {
      'imagePath': 'assets/images/lab_audio_video.jpg',
      'title': 'Lab. Audio Video Production',
      'description': 'Fasilitas produksi audio dan video profesional',
    },
    {
      'imagePath': 'assets/images/lab_studio_broadcasting.jpg',
      'title': 'Lab. Studio Broadcasting',
      'description': 'Studio broadcasting dengan teknologi terkini',
    },
    {
      'imagePath': 'assets/images/lab_desain_multimedia.jpg',
      'title': 'Lab. Desain Multimedia & Produksi',
      'description': 'Laboratorium desain dan produksi multimedia',
    },
    {
      'imagePath': 'assets/images/lab_cal.jpg',
      'title': 'Lab. Computer Aided Learning',
      'description': 'Laboratorium pembelajaran berbasis komputer',
    },
    {
      'imagePath': 'assets/images/studio_podcast.jpg',
      'title': 'Studio Podcast',
      'description': 'Studio podcast dengan kualitas audio premium',
    },
    {
      'imagePath': 'assets/images/lab_digital_imaging.jpg',
      'title': 'Lab. Digital Imaging',
      'description': 'Laboratorium pengolahan dan editing gambar digital',
    },
    {
      'imagePath': 'assets/images/studio_tv_pertunjukan.jpg',
      'title': 'Studio TV Pertunjukan',
      'description': 'Studio televisi untuk produksi acara pertunjukan',
    },
    {
      'imagePath': 'assets/images/ruang_mahasiswa.jpg',
      'title': 'Ruang Mahasiswa',
      'description': 'Ruang diskusi dan aktivitas mahasiswa',
    },
  ];

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF0F2D52);
    const accentColor = Color(0xFF1E88E5);

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: Column(
          children: [
            // Reusable Header
            const CommonHeader(
              title: 'PROGRAM STUDI',
              subtitle: 'TEKNOLOGI MULTIMEDIA DAN BROADCASTING',
            ),
            
            // Content
            Expanded(
              child: CustomScrollView(
                slivers: [
                  // Section Title
                  SliverToBoxAdapter(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: accentColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.location_city_rounded,
                                  color: accentColor,
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 12),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Fasilitas Kami',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF2C3E50),
                                      ),
                                    ),
                                    Text(
                                      'Fasilitas modern untuk mendukung pembelajaran',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  // Facilities Grid
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final item = fasilitasList[index];
                          return Container(
                            margin: const EdgeInsets.only(bottom: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 20,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: () {
                                  // Handle tap - bisa navigate ke detail page
                                },
                                child: Row(
                                  children: [
                                    // Image
                                    Hero(
                                      tag: 'facility_${index}',
                                      child: Container(
                                        width: 120,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              primaryColor.withOpacity(0.1),
                                              accentColor.withOpacity(0.1),
                                            ],
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                          ),
                                          child: Image.asset(
                                            item['imagePath']!,
                                            fit: BoxFit.cover,
                                            errorBuilder: (context, error, stackTrace) {
                                              return Container(
                                                color: Colors.grey[200],
                                                child: Icon(
                                                  Icons.image_not_supported,
                                                  color: Colors.grey[400],
                                                  size: 40,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    
                                    // Content
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              item['title']!,
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF2C3E50),
                                                height: 1.2,
                                              ),
                                            ),
                                            const SizedBox(height: 6),
                                            Text(
                                              item['description'] ?? '',
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey[600],
                                                height: 1.3,
                                              ),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        childCount: fasilitasList.length,
                      ),
                    ),
                  ),
                  
                  // Bottom padding
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}