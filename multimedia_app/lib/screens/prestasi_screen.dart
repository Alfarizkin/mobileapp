import 'package:flutter/material.dart';

class PrestasiScreen extends StatefulWidget {
  const PrestasiScreen({Key? key}) : super(key: key);

  @override
  State<PrestasiScreen> createState() => _PrestasiScreenState();
}

class _PrestasiScreenState extends State<PrestasiScreen> {
  int selectedIndex = 0; // 0: Akademik, 1: Non-Akademik

  final List<String> toggleTitles = ['Akademik', 'Non-Akademik'];

  final List<String> akademikList = [
    '[ 2024 | Nasional ] – Juara 2 – KIMPN 2024 “Bidang Animasi” – Politeknik Negeri Jakarta – Goldan Mahardhika '
'[ 2023 | Nasional ] – Juara 1 – Video Digital Pendidikan Multimedia Competition (PEDITION) 2023 – Universitas Pendidikan Indonesia – Agri Dwika Aprelio'
'[ 2023 | Nasional ] – Juara 3 Kategori Campus Magazine – Polytechnic Creative Festival (PCFest) 2023 – Arman Jaya'
'[ 2023 | Nasional ] – Juara 3 Kategori Fashion Photography – Polytechnic Creative Festival (PCFest) 2023 – Ashiliya Atsmara Zukkaha'
'[ 2022 | Nasional ] – Juara Harapan 1 – GEMASTIK 2022 “Pengembangan Bisnis” – Universitas Brawijaya – Moch. Ulul Albab'
'[ 2022 | Nasional ] – Juara 1 – INOVTEK 2022 “Youth Technology Business and Idea Competition” – Institut Teknologi Indonesia – Arsyi Aisyah Salwa & Ifa Kurniawati'
'[ 2022 | Nasional ] – 10 Besar-  PERTAMUDA – Pertamina – Arsyi Aisyah Salwa & Ifa Kurniawati'
'[ 2022 | Nasional ] – Juara 2 dan Desain Terbaik – Kontes Robot Indonesia – KRSBI Beroda – Arsyi Aisyah Salwa'
'[ 2022 | Nasional ] – Juara 1 – Kreasi Video Pendek Pekan Literasi Digital Pesantren II – Pondok Pesantren Tebuireng Jombang – Lukman Hanafi'
'[ 2022 | Nasional ] – Juara 1 – ECOFEST Photography Competition – BEM UPN Jawa Timur – Dyaz Nurul Alif Iskandar'
'[ 2021 | Nasional ] – Juara 1 – Photography Competition Pendidikan Kepelatihan Olahraga – FKOR UNS Surakarta – Viko Satria Pratama'
'[ 2021 | Nasional ] – Juara 2 – Gagasan dan Rancangan Kreatif (LoGRak) – Polinema – Iqbal Dhiyaudin Prayitnoadi'
'[ 2021 | Nasional ] – Juara 1 – Public Health Event Competition Indonesia – Universitas Dian Nuswantoro – Viko Satria Pratama'
'[ 2021 | Nasional ] – Juara 1 – LOGIC Lomba Fotografi – FK Universitas Andalas – Viko Satria Pratama'
'[ 2021 | Nasional ] – Juara 1 – Photo Hunt & Exhibition OPTIK – Fakultas Ilmu Komputer Universitas Brawijaya – Lukman Hanafi'
'[ 2021 | Internasional ] – Juara 6 – 2021 CanSat Competition – Virginia Tech US – Annisa Lidya Ardiani'
'[ 2020 | Nasional ] – Juara 3 – Lomba Fotografi Lensa Andalas – Univesitas Andalas – Viko Satria Pratama'
'[ 2020 | Nasional ] – Juara 2 – Lomba Online Aplikasi Inovatif dan Inspiratif untuk covid-19 – ITS – Bianca Surya Nobelia'
'[ 2020 | Nasional ] – Juara 1 – EXORTUS 3.0 – Univesitas Padjajaran – Viko Satria Pratama'
'[ 2020 | Lokal/Wilayah ] – Juara 2 – Shipbuilding Poster Competition – PPNS – Elisa Willy Santoso'
'[ 2020 | Lokal/Wilayah ] – Juara 1 – Lomba Film Pendek Tertib Lalu Lintas – Dishub Kota Mojokerto – Imanuel Petra Setiawan'
'[ 2019 | Nasional ] – Juara Harapan 1 – Lomba Vlog Kemerdekaan – Ikatan Jurnalistik Televisi Indonesia dan Persatuan Wartawan Indonesia – Imanuel Petra Setiawan'
'[ 2019 | Lokal/Wilayah ] – Juara 1 – Lomba Fotografi Festival Tabebuya Surabaya – Jawa Pos – Dwi Nova Saputra'
  ];

  final List<String> nonAkademikList = [
    '2024 | Nasional | Juara 3 - Petanque Bronze Competition (PBC) 2024 – Hosnah Julis (2019)',
    '2023 | Internasional | Outstanding Performance – The 10th Bratislava International Choir Competition, Slovakia – Bianca Surya Noebila',
'[ 2022 | Nasional ] – Juara 1 – Lomba Esai Vinilon Group – Thania Wahyu Anandita'
'[ 2022 | Nasional ] – Juara 1 – Lomba Lukis Kaligrafi Latin – Porseni Banjarmasin – Sopannadi'
'[ 2022 | Internasional ] – Outstanding Performance – The 37th Takarazuka International Chamber Chorus Contest – Kirana Dewi Witjaksono '
'[ 2022 | Nasional ] – Silver Medal – Festival Paduan Suara 7th Universitas Surabaya – Kirana Dewi Witjaksono'
'[ 2022 | Nasional ] – Juara Kostum Terbaik – Putera Puteri Kampus Indonesia – Thania Wahyu Anandita'
'[ 2022 | Lokal/Wilayah ] – Juara 2 – Pemilihan Putera Puteri Kampus Jawa Timur – Thania Wahyu Anandita'
'[ 2021 | Nasional ] – Juara 2 – Lomba Lukis Tingkat Nasional – FMIPA Universitas Bengkulu – Lailatul Safitri N.H.'
'[ 2021 | Nasional ] – Juara Kostum Terbaik – Tari Kreasi Tradisi – Buwaca Satwika – Dinda Nurazizun Paraswati'
'[ 2021 | Nasional ] – Juara 1 – Lomba Esai Workshop Penulisan – Universitas Negeri Malang – Thania Wahyu Anandita'
'[ 2021 | Lokal/Wilayah ] – Juara 2 – Lomba Esai Melestarikan Kebudayaan – PP Bayt Al-Hikmah Pasuruan – Firda Islamiata Dini'
'[ 2020 | Internasional ] – Juara 1 – International Open Tournament Pencak Silat of Banyuwangi International Championship 1 2020 – Firsha Biyanti Pradipta'
'[ 2020 | Internasional ] – Juara 2 – International Open Tournament Pencak Silat of Banyuwangi International Championship 1 2020 – Zaizard Alamsyah'
'[ 2019 | Nasional ] – Juara 2 – National Open Tournament Pencak Silat of Kota Pahlawan Championship 1 2019 – Firsha Biyanti Pradipta'
'[ 2019 | Nasional ] – Juara 3 – National Open Tournament Pencak Silat of Kota Pahlawan Championship 1 2019 – Zaizard Alamsyah'
    // Tambahkan data lain sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    List<String> currentList =
        selectedIndex == 0 ? akademikList : nonAkademikList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Prestasi Mahasiswa'),
        backgroundColor: const Color(0xFF0F2D52),
      ),
      body: Column(
        children: [
          // Toggle Tabs
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              children: List.generate(toggleTitles.length, (idx) {
                bool selected = idx == selectedIndex;
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = idx;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: selected ? const Color(0xFF0F2D52) : Colors.white,
                        border: Border.all(color: const Color(0xFF0F2D52)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          toggleTitles[idx],
                          style: TextStyle(
                            color: selected ? Colors.white : const Color(0xFF0F2D52),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const Divider(height: 1),
          // List Prestasi
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: currentList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    '• ${currentList[index]}',
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
