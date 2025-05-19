import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/fasilitas_screen.dart';
import 'screens/visi_misi_screen.dart';
import 'screens/himpunan_screen.dart';
import 'screens/research_screen.dart';
import 'screens/gallery_screen.dart';
import 'screens/prestasi_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'D3 Multimedia dan Broadcasting',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainPage(),
      routes: {
        '/gallery': (context) => const GalleryScreen(),
        '/prestasi': (context) => const PrestasiScreen(), // Route untuk Prestasi
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 2; // Default ke Home (index 2)

  final List<Widget> _pages = [
    const FasilitasScreen(),
    const VisiMisiScreen(),
    const HomeScreen(),
    const HimpunanScreen(),
    const ResearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              spreadRadius: 1,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          backgroundColor: const Color(0xFF0F2D52),
          elevation: 0,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.apartment),
              label: 'Fasilitas',
              backgroundColor: Color(0xFF0F2D52),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Visi Misi',
              backgroundColor: Color(0xFF0F2D52),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color(0xFF0F2D52),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Himpunan',
              backgroundColor: Color(0xFF0F2D52),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.science),
              label: 'Research',
              backgroundColor: Color(0xFF0F2D52),
            ),
          ],
        ),
      ),
    );
  }
}
