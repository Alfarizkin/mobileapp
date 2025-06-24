import 'package:flutter/material.dart';

class PrestasiScreen extends StatefulWidget {
  const PrestasiScreen({Key? key}) : super(key: key);

  @override
  State<PrestasiScreen> createState() => _PrestasiScreenState();
}

class _PrestasiScreenState extends State<PrestasiScreen> {
  int selectedIndex = 0; // 0: Akademik, 1: Non-Akademik
  PageController pageController = PageController(); // Tambahan PageController

  final List<String> toggleTitles = ['Akademik', 'Non-Akademik'];

  final List<Map<String, String>> akademikList = [
    {
      'year': '2024',
      'level': 'Nasional',
      'achievement': 'Juara 2',
      'event': 'KIMPN 2024 "Bidang Animasi"',
      'organizer': 'Politeknik Negeri Jakarta',
      'student': 'Goldan Mahardhika'
    },
    {
      'year': '2023',
      'level': 'Nasional',
      'achievement': 'Juara 1',
      'event': 'Video Digital Pendidikan Multimedia Competition (PEDITION) 2023',
      'organizer': 'Universitas Pendidikan Indonesia',
      'student': 'Agri Dwika Aprelio'
    },
    {
      'year': '2023',
      'level': 'Nasional',
      'achievement': 'Juara 3 Kategori Campus Magazine',
      'event': 'Polytechnic Creative Festival (PCFest) 2023',
      'organizer': '',
      'student': 'Arman Jaya'
    },
    {
      'year': '2023',
      'level': 'Nasional',
      'achievement': 'Juara 3 Kategori Fashion Photography',
      'event': 'Polytechnic Creative Festival (PCFest) 2023',
      'organizer': '',
      'student': 'Ashiliya Atsmara Zukkaha'
    },
    {
      'year': '2022',
      'level': 'Nasional',
      'achievement': 'Juara Harapan 1',
      'event': 'GEMASTIK 2022 "Pengembangan Bisnis"',
      'organizer': 'Universitas Brawijaya',
      'student': 'Moch. Ulul Albab'
    },
    {
      'year': '2022',
      'level': 'Nasional',
      'achievement': 'Juara 1',
      'event': 'INOVTEK 2022 "Youth Technology Business and Idea Competition"',
      'organizer': 'Institut Teknologi Indonesia',
      'student': 'Arsyi Aisyah Salwa & Ifa Kurniawati'
    },
    {
      'year': '2022',
      'level': 'Nasional',
      'achievement': '10 Besar',
      'event': 'PERTAMUDA',
      'organizer': 'Pertamina',
      'student': 'Arsyi Aisyah Salwa & Ifa Kurniawati'
    },
    {
      'year': '2022',
      'level': 'Nasional',
      'achievement': 'Juara 2 dan Desain Terbaik',
      'event': 'Kontes Robot Indonesia – KRSBI Beroda',
      'organizer': '',
      'student': 'Arsyi Aisyah Salwa'
    },
    {
      'year': '2022',
      'level': 'Nasional',
      'achievement': 'Juara 1',
      'event': 'Kreasi Video Pendek Pekan Literasi Digital Pesantren II',
      'organizer': 'Pondok Pesantren Tebuireng Jombang',
      'student': 'Lukman Hanafi'
    },
    {
      'year': '2022',
      'level': 'Nasional',
      'achievement': 'Juara 1',
      'event': 'ECOFEST Photography Competition',
      'organizer': 'BEM UPN Jawa Timur',
      'student': 'Dyaz Nurul Alif Iskandar'
    },
    {
      'year': '2021',
      'level': 'Nasional',
      'achievement': 'Juara 1',
      'event': 'Photography Competition Pendidikan Kepelatihan Olahraga',
      'organizer': 'FKOR UNS Surakarta',
      'student': 'Viko Satria Pratama'
    },
    {
      'year': '2021',
      'level': 'Nasional',
      'achievement': 'Juara 2',
      'event': 'Gagasan dan Rancangan Kreatif (LoGRak)',
      'organizer': 'Polinema',
      'student': 'Iqbal Dhiyaudin Prayitnoadi'
    },
    {
      'year': '2021',
      'level': 'Nasional',
      'achievement': 'Juara 1',
      'event': 'Public Health Event Competition Indonesia',
      'organizer': 'Universitas Dian Nuswantoro',
      'student': 'Viko Satria Pratama'
    },
    {
      'year': '2021',
      'level': 'Nasional',
      'achievement': 'Juara 1',
      'event': 'LOGIC Lomba Fotografi',
      'organizer': 'FK Universitas Andalas',
      'student': 'Viko Satria Pratama'
    },
    {
      'year': '2021',
      'level': 'Nasional',
      'achievement': 'Juara 1',
      'event': 'Photo Hunt & Exhibition OPTIK',
      'organizer': 'Fakultas Ilmu Komputer Universitas Brawijaya',
      'student': 'Lukman Hanafi'
    },
    {
      'year': '2021',
      'level': 'Internasional',
      'achievement': 'Juara 6',
      'event': '2021 CanSat Competition',
      'organizer': 'Virginia Tech US',
      'student': 'Annisa Lidya Ardiani'
    },
    {
      'year': '2020',
      'level': 'Nasional',
      'achievement': 'Juara 3',
      'event': 'Lomba Fotografi Lensa Andalas',
      'organizer': 'Univesitas Andalas',
      'student': 'Viko Satria Pratama'
    },
    {
      'year': '2020',
      'level': 'Nasional',
      'achievement': 'Juara 2',
      'event': 'Lomba Online Aplikasi Inovatif dan Inspiratif untuk covid-19',
      'organizer': 'ITS',
      'student': 'Bianca Surya Nobelia'
    },
    {
      'year': '2020',
      'level': 'Nasional',
      'achievement': 'Juara 1',
      'event': 'EXORTUS 3.0',
      'organizer': 'Univesitas Padjajaran',
      'student': 'Viko Satria Pratama'
    },
    {
      'year': '2020',
      'level': 'Lokal/Wilayah',
      'achievement': 'Juara 2',
      'event': 'Shipbuilding Poster Competition',
      'organizer': 'PPNS',
      'student': 'Elisa Willy Santoso'
    },
    {
      'year': '2020',
      'level': 'Lokal/Wilayah',
      'achievement': 'Juara 1',
      'event': 'Lomba Film Pendek Tertib Lalu Lintas',
      'organizer': 'Dishub Kota Mojokerto',
      'student': 'Imanuel Petra Setiawan'
    },
    {
      'year': '2019',
      'level': 'Nasional',
      'achievement': 'Juara Harapan 1',
      'event': 'Lomba Vlog Kemerdekaan',
      'organizer': 'Ikatan Jurnalistik Televisi Indonesia dan Persatuan Wartawan Indonesia',
      'student': 'Imanuel Petra Setiawan'
    },
    {
      'year': '2019',
      'level': 'Lokal/Wilayah',
      'achievement': 'Juara 1',
      'event': 'Lomba Fotografi Festival Tabebuya Surabaya',
      'organizer': 'Jawa Pos',
      'student': 'Dwi Nova Saputra'
    },
  ];

  final List<Map<String, String>> nonAkademikList = [
    {
      'year': '2024',
      'level': 'Nasional',
      'achievement': 'Juara 3',
      'event': 'Petanque Bronze Competition (PBC) 2024',
      'organizer': '',
      'student': 'Hosnah Julis (2019)'
    },
    {
      'year': '2023',
      'level': 'Internasional',
      'achievement': 'Outstanding Performance',
      'event': 'The 10th Bratislava International Choir Competition, Slovakia',
      'organizer': '',
      'student': 'Bianca Surya Noebila'
    },
    {
      'year': '2022',
      'level': 'Nasional',
      'achievement': 'Juara 1',
      'event': 'Lomba Esai Vinilon Group',
      'organizer': '',
      'student': 'Thania Wahyu Anandita'
    },
    {
      'year': '2022',
      'level': 'Nasional',
      'achievement': 'Juara 1',
      'event': 'Lomba Lukis Kaligrafi Latin',
      'organizer': 'Porseni Banjarmasin',
      'student': 'Sopannadi'
    },
    {
      'year': '2022',
      'level': 'Internasional',
      'achievement': 'Outstanding Performance',
      'event': 'The 37th Takarazuka International Chamber Chorus Contest',
      'organizer': '',
      'student': 'Kirana Dewi Witjaksono'
    },
    {
      'year': '2022',
      'level': 'Nasional',
      'achievement': 'Silver Medal',
      'event': 'Festival Paduan Suara 7th Universitas Surabaya',
      'organizer': '',
      'student': 'Kirana Dewi Witjaksono'
    },
    {
      'year': '2022',
      'level': 'Nasional',
      'achievement': 'Juara Kostum Terbaik',
      'event': 'Putera Puteri Kampus Indonesia',
      'organizer': '',
      'student': 'Thania Wahyu Anandita'
    },
    {
      'year': '2022',
      'level': 'Lokal/Wilayah',
      'achievement': 'Juara 2',
      'event': 'Pemilihan Putera Puteri Kampus Jawa Timur',
      'organizer': '',
      'student': 'Thania Wahyu Anandita'
    },
    {
      'year': '2021',
      'level': 'Nasional',
      'achievement': 'Juara 2',
      'event': 'Lomba Lukis Tingkat Nasional',
      'organizer': 'FMIPA Universitas Bengkulu',
      'student': 'Lailatul Safitri N.H.'
    },
    {
      'year': '2021',
      'level': 'Nasional',
      'achievement': 'Juara Kostum Terbaik',
      'event': 'Tari Kreasi Tradisi – Buwaca Satwika',
      'organizer': '',
      'student': 'Dinda Nurazizun Paraswati'
    },
    {
      'year': '2021',
      'level': 'Nasional',
      'achievement': 'Juara 1',
      'event': 'Lomba Esai Workshop Penulisan',
      'organizer': 'Universitas Negeri Malang',
      'student': 'Thania Wahyu Anandita'
    },
    {
      'year': '2021',
      'level': 'Lokal/Wilayah',
      'achievement': 'Juara 2',
      'event': 'Lomba Esai Melestarikan Kebudayaan',
      'organizer': 'PP Bayt Al-Hikmah Pasuruan',
      'student': 'Firda Islamiata Dini'
    },
    {
      'year': '2020',
      'level': 'Internasional',
      'achievement': 'Juara 1',
      'event': 'International Open Tournament Pencak Silat of Banyuwangi International Championship 1 2020',
      'organizer': '',
      'student': 'Firsha Biyanti Pradipta'
    },
    {
      'year': '2020',
      'level': 'Internasional',
      'achievement': 'Juara 2',
      'event': 'International Open Tournament Pencak Silat of Banyuwangi International Championship 1 2020',
      'organizer': '',
      'student': 'Zaizard Alamsyah'
    },
    {
      'year': '2019',
      'level': 'Nasional',
      'achievement': 'Juara 2',
      'event': 'National Open Tournament Pencak Silat of Kota Pahlawan Championship 1 2019',
      'organizer': '',
      'student': 'Firsha Biyanti Pradipta'
    },
    {
      'year': '2019',
      'level': 'Nasional',
      'achievement': 'Juara 3',
      'event': 'National Open Tournament Pencak Silat of Kota Pahlawan Championship 1 2019',
      'organizer': '',
      'student': 'Zaizard Alamsyah'
    },
  ];

  static const primaryColor = Color(0xFF0F2D52);
  static const accentColor = Color(0xFF1E88E5);

  Color getLevelColor(String level) {
    switch (level.toLowerCase()) {
      case 'internasional':
        return const Color(0xFFE91E63); // Pink
      case 'nasional':
        return const Color(0xFF4CAF50); // Green
      case 'lokal/wilayah':
        return const Color(0xFFFF9800); // Orange
      default:
        return const Color(0xFF9E9E9E); // Grey
    }
  }

  IconData getLevelIcon(String level) {
    switch (level.toLowerCase()) {
      case 'internasional':
        return Icons.public_rounded;
      case 'nasional':
        return Icons.flag_rounded;
      case 'lokal/wilayah':
        return Icons.location_city_rounded;
      default:
        return Icons.emoji_events_rounded;
    }
  }

  Widget buildAchievementList(List<Map<String, String>> currentList) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final achievement = currentList[index];
            final levelColor = getLevelColor(achievement['level']!);
            final levelIcon = getLevelIcon(achievement['level']!);

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header with level indicator
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      decoration: BoxDecoration(
                        color: levelColor.withOpacity(0.1),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: levelColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              levelIcon,
                              color: levelColor,
                              size: 16,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: levelColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              achievement['level']!,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: levelColor,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: primaryColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              achievement['year']!,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // Content
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Achievement badge
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [primaryColor, accentColor],
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              achievement['achievement']!,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          
                          const SizedBox(height: 12),
                          
                          // Event name
                          Text(
                            achievement['event']!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2C3E50),
                              height: 1.3,
                            ),
                          ),
                          
                          if (achievement['organizer']!.isNotEmpty) ...[
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.business_rounded,
                                  size: 16,
                                  color: Colors.grey[600],
                                ),
                                const SizedBox(width: 4),
                                Expanded(
                                  child: Text(
                                    achievement['organizer']!,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                          
                          const SizedBox(height: 8),
                          
                          // Student name
                          Row(
                            children: [
                              Icon(
                                Icons.person_rounded,
                                size: 16,
                                color: accentColor,
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  achievement['student']!,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: accentColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          childCount: currentList.length,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text(
          'Prestasi Mahasiswa',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Header Section
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    primaryColor,
                    accentColor,
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.emoji_events_rounded,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prestasi Mahasiswa',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'TMB PENS',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Pencapaian luar biasa mahasiswa kami',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white70,
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

            // Toggle Tabs dengan style baru (sama seperti ResearchScreen)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
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
                child: Row(
                  children: List.generate(toggleTitles.length, (idx) {
                    bool selected = idx == selectedIndex;
                    return Expanded(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = idx;
                            });
                            pageController.animateToPage(
                              idx,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                              border: selected
                                  ? const Border(
                                      bottom: BorderSide(
                                        color: accentColor,
                                        width: 3,
                                      ),
                                    )
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                toggleTitles[idx],
                                style: TextStyle(
                                  color: selected ? accentColor : const Color(0xFF6B7280),
                                  fontWeight: selected ? FontWeight.bold : FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // PageView untuk swipe gesture
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                children: [
                  // Akademik Tab
                  CustomScrollView(
                    slivers: [
                      buildAchievementList(akademikList),
                      const SliverToBoxAdapter(child: SizedBox(height: 20)),
                    ],
                  ),
                  // Non-Akademik Tab
                  CustomScrollView(
                    slivers: [
                      buildAchievementList(nonAkademikList),
                      const SliverToBoxAdapter(child: SizedBox(height: 20)),
                    ],
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