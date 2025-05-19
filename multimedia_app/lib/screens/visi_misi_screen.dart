import 'package:flutter/material.dart';

class VisiMisiScreen extends StatelessWidget {
  const VisiMisiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visi Misi'),
        backgroundColor: const Color(0xFF0F2D52),
      ),
      body: const Center(
        child: Text('Halaman Visi Misi'),
      ),
    );
  }
}
