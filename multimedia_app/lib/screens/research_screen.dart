import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String title;
  const CustomHeader({Key? key, required this.title}) : super(key: key);

  static const primaryColor = Color(0xFF0F2D52);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                'PROGRAM STUDI\nTEKNOLOGI MULTIMEDIA DAN BROADCASTING',
                style: const TextStyle(
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
    );
  }
}

class ResearchScreen extends StatefulWidget {
  const ResearchScreen({Key? key}) : super(key: key);

  @override
  State<ResearchScreen> createState() => _ResearchScreenState();
}

class _ResearchScreenState extends State<ResearchScreen> {
  final List<String> years = ['2020', '2021', '2022', '2023', '2024'];
  int selectedYearIndex = 0;

  final Map<String, List<String>> researchByYear = {
    '2020': [
      'Quality Assessment of Digital Terrestrial Television Broadcast in Surabaya',
      'Interactive Learning Media for Hearing-Impaired Children using Indonesian Sign Language (SIBI)-Simple Sentence Arrangement',
      'Bit Error Rate Evaluation of Digital Terrestrial TV Broadcast Based on Field Measurement in Urban Area',
      'Web-Based Animation for 8th Grade Science Student on Human Blood Circulation',
      'Development of Virtual Engineering Platform for Online Learning System',
      'BatiKids-A Game-based Learning Designed to Introduce the Process of Batik Technique to Children',
      'Preliminary Development of virtual',
    ],
    '2021': [
      'Field Measurement of Digital Terrestrial Television DVB-T2 on Urban Area: Validation of Link Budget Model using GIS',
      'PIECES Framework Method to Measure the Effectiveness of Obesity Explainer Animation Videos',
      'Animation of Mathematics Learning for Vocational High School about Geometry Transformation Using Participatory Design',
      'Media Information of Generalized Anxiety Disorder in Adolescent Through Animation Explainer',
      'Talking Krishna–Developing 3D Character of Krishna',
      'Implementation of Liquid Animation Techniques for Developing Renewable Energy Motion Graphics',
      'Animated Video Using Duik Bassel Rigging Toolset on Tuberculosis Education',
      'Animated Company Profile Video Using Puppet Pin Rigging for Character Movement',
      'Participatory Design in Developing Gamification on Introducing Renewable Energy to Teenage Students',
      'Augmented Reality untuk Video Stereoscopic Pencak Silat',
      'Rancang Bangun Audio Video Vmix Console pada Pertunjukan Live Stream Youtube',
      'Pembelajaran Dengan Metode Tamyiz Sebagai Alternative Pembelajaran Bahasa Arab',
      'User Interface Improvement in English Kids Talk Application using The Heuristic Evaluation Method',
      'Desain Aplikasi Virtual Tour Wisata Setigi Gresik Menggunakan Metode UCD (User Centered Design)',
      'Aplikasi Teknik Ecoprint Pada Media Kulit Dalam Pembuatan Tas Fashion Wanita Dalam Konteks Liminalitas',
      'Efektivitas Pengembangan Bahan Ajar Seni Budaya Melalui Aplikasi Kinemaster di Masa Pandemi Covid-19',
      'Visual Book as a Learning Medium of Islamic Religious Education Courses for Politeknik Elektronika Negeri Surabaya (PENS) Students',
      'Media Information of Generalized Anxiety Disorder In Adolescent Through Animation Explainer',
    ],
    '2022': [
      'Background Blurring and Removal for 3D Modelling of Cultural Heritage Objects',
      'Analysis Performance of QoS and QoE Digital Television in Urban Area',
      'Analisis Dataset Video Gerakan Dasar Taekwondo dengan Motion Capture',
      'Implementations of Integration Functions in IoT Application Server Platform',
      'Design and Implementation of Indoor Navigation for PENS Visitors Using Augmented Intelligence',
      'Design and Implementation of SEMAR IoT Server Platform with Applications',
      'Implementation of Immersive Technology on Medical Education',
      'Audio Based Action Recognition for Monitoring Elderly Dementia Patients',
      'High Speed Wireless Transmission System at 190–320 GHz Band',
      'Application of Augmented Intelligence Technology with Human Body Tracking for Human Anatomy Education',
      'Pembuatan Video Animasi Sebagai Media Pembelajaran Untuk Anak Usia Dini Pada Komunitas Pelajar Mengajar Surabaya',
      'Design of Digital Squeeze Frame Console for Public Service Advertisement',
      'Tool Refactoring Otomatis untuk Menangani Lazy Class Code Smell dengan Pendekatan Software Metrics',
      'Developing Microframework based on Singleton and Abstract Factory Design Pattern',
      'Sosialisasi Game Edukasi TOGA sebagai Media Pembelajaran Tanaman Obat Keluarga (TOGA) di SDN 3 Made Lamongan',
      'Pengembangan Multimedia Interaktif Pengenalan Hewan Untuk Anak TK Berbasis Augmented Reality',
      'Development of Animal Recognition E-Learning Using Augmented Reality Technology',
      'Traditional Game-Based Learning Model In Early Childhood Education: A Case Study at TKIT Al-Hikmah',
    ],
    '2023': [
      'Participatory Design in the Development of Animated Comic on Website',
      'Rancang Bangun Sistem Fotografi Tiga Dimensi Penghasil Model 3D dan Pencetakan 3D dari Kamera sebagai Terobosan Pengembangan Inovasi dan Akselerasi Bisnis Studio Foto',
      'Implementasi Learning Management System Berbasis Virtual Reality Terintegrasi sebagai Media Pembelajaran untuk Meningkatkan Keterampilan Siswa Vokasi dalam Rangka Mendukung Program Merdeka Belajar Kampus Merdeka',
      'Implementasi Multi Extension pada Smart IoT Platform',
      'Animasi Interaktif Matematika Sebagai Penunjang Pembelajaran Jarak Jauh',
    ],
    '2024': [
      'Automation for Digital Twins Sebagai Alat Pendukung Industrialisasi Karya Asli Anak Bangsa',
      'Implementasi Spatial Big Data yang terintegrasi dengan Smart Monitoring and Analytics in Real-time (SMAR) system sebagai platform untuk mendukung Smart City di Kota Surabaya',
      'Pengembangan Platform Aplikasi Ujian Online Berbasis Web Terintegrasi Dengan Sistem Pengawasan Cerdas',
      'Tracable File Management System Using Blockchain and IPFS',
      'Implementasi Stable Matching dengan Preferensi Dinamis pada Sistem Penerimaan Mahasiswa Baru Berbasis Prestasi',
      'Platform Virtual Reality Galeri Seni',
      'Enhancing Robotic Learning for Children through Interaction on AR Application',
      'Pengembangan Aplikasi Mobile Pemantauan Stundting Anak dengan Penerapan Metode User Center Design',
      'Blockchain Implementation for Smart Buildings',
      'User Interface Improvement in English Kids Talk Application using The Heuristic Evaluation Method',
      'Implementation of Seamless Indoor-Outdoor Navigation System Utilizing WebXR and Graph for Enhanced Navigation Experiences',
      'Reka Teknologi Imersif Studio',
    ],
  };

  @override
  Widget build(BuildContext context) {
    String selectedYear = years[selectedYearIndex];
    List<String> researchList = researchByYear[selectedYear] ?? [];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header sama dengan VisiMisiScreen
          const CustomHeader(title: 'Penelitian'),
          // Tahun horizontal scroll
          Container(
            color: const Color(0xFFF4F4F4),
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(years.length, (index) {
                  bool selected = index == selectedYearIndex;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedYearIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: selected ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        children: [
                          Text(
                            years[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: selected ? const Color(0xFFBDAF6A) : Colors.black,
                            ),
                          ),
                          if (selected)
                            Container(
                              margin: const EdgeInsets.only(top: 2),
                              height: 2,
                              width: 24,
                              color: const Color(0xFFBDAF6A),
                            ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          // List Penelitian
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: researchList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    '• ${researchList[index]}',
                    style: const TextStyle(fontSize: 15),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}