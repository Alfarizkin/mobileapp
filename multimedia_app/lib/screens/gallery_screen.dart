import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import '../models/gallery_item.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  // List untuk gallery
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
    GalleryItem(
      imageUrl: 'assets/images/gallery6.jpg',
      title: 'Kegiatan 6',
    ),
    GalleryItem(
      imageUrl: 'assets/images/gallery7.jpg',
      title: 'Kegiatan 7',
    ),
    GalleryItem(
      imageUrl: 'assets/images/gallery8.jpg',
      title: 'Kegiatan 8',
    ),
    GalleryItem(
      imageUrl: 'assets/images/gallery9.jpg',
      title: 'Kegiatan 9',
    ),
    GalleryItem(
      imageUrl: 'assets/images/gallery10.jpg',
      title: 'Kegiatan 10',
    ),
    // Tambahkan lebih banyak item sesuai kebutuhan
  ];

  void _openImageZoomView(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImageZoomView(
          galleryItems: galleryItems,
          initialIndex: index,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Gallery MMB',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF0F2D52),
      ),
      body: Column(
        children: [
          // Header dengan logo PENS
          Container(
            color: const Color(0xFF0F2D52),
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/logo_pens.png',
                  height: 40,
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
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'TEKNOLOGI MULTIMEDIA DAN BROADCASTING',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          // Gallery MMB Title
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Gallery MMB',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0F2D52),
                  ),
                ),
              ],
            ),
          ),
          
          // Gallery Grid dengan scroll vertikal
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.2, // Sesuaikan dengan ratio yang dibutuhkan
                ),
                itemCount: galleryItems.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => _openImageZoomView(context, index),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        galleryItems[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Widget untuk zoom gambar
class ImageZoomView extends StatefulWidget {
  final List<GalleryItem> galleryItems;
  final int initialIndex;

  const ImageZoomView({
    Key? key,
    required this.galleryItems,
    required this.initialIndex,
  }) : super(key: key);

  @override
  State<ImageZoomView> createState() => _ImageZoomViewState();
}

class _ImageZoomViewState extends State<ImageZoomView> {
  late PageController _pageController;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          widget.galleryItems[_currentIndex].title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: PhotoViewGallery.builder(
        scrollPhysics: const BouncingScrollPhysics(),
        builder: (BuildContext context, int index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: AssetImage(widget.galleryItems[index].imageUrl),
            initialScale: PhotoViewComputedScale.contained,
            minScale: PhotoViewComputedScale.contained * 0.8,
            maxScale: PhotoViewComputedScale.covered * 2,
          );
        },
        itemCount: widget.galleryItems.length,
        loadingBuilder: (context, event) => const Center(
          child: CircularProgressIndicator(),
        ),
        pageController: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
