import 'package:flutter/material.dart';
import '../widgets/common_header.dart';

class ResearchScreen extends StatefulWidget {
  const ResearchScreen({Key? key}) : super(key: key);

  @override
  State<ResearchScreen> createState() => _ResearchScreenState();
}

class _ResearchScreenState extends State<ResearchScreen> {
  final List<String> years = ['2020', '2021', '2022', '2023', '2024'];
  int selectedYearIndex = 4; // Default to 2024 (latest)

  final Map<String, List<Map<String, String>>> researchByYear = {
    '2020': [
      {
        'title': 'Quality Assessment of Digital Terrestrial Television Broadcast in Surabaya',
        'category': 'Broadcasting Technology',
        'description': 'Research on digital TV quality assessment in urban areas'
      },
      {
        'title': 'Interactive Learning Media for Hearing-Impaired Children using Indonesian Sign Language (SIBI)',
        'category': 'Educational Technology',
        'description': 'Developing interactive learning tools for special needs education'
      },
      {
        'title': 'Bit Error Rate Evaluation of Digital Terrestrial TV Broadcast',
        'category': 'Broadcasting Technology',
        'description': 'Field measurement based evaluation in urban environments'
      },
      {
        'title': 'Web-Based Animation for 8th Grade Science Student on Human Blood Circulation',
        'category': 'Educational Animation',
        'description': 'Interactive web animation for science education'
      },
      {
        'title': 'Development of Virtual Engineering Platform for Online Learning System',
        'category': 'Virtual Learning',
        'description': 'Platform development for remote engineering education'
      },
      {
        'title': 'BatiKids-A Game-based Learning for Batik Technique Introduction',
        'category': 'Game-based Learning',
        'description': 'Educational game introducing traditional batik techniques to children'
      },
    ],
    '2021': [
      {
        'title': 'Field Measurement of Digital Terrestrial Television DVB-T2 on Urban Area',
        'category': 'Broadcasting Technology',
        'description': 'GIS-based validation of link budget model for DVB-T2'
      },
      {
        'title': 'PIECES Framework Method for Obesity Explainer Animation Videos',
        'category': 'Health Animation',
        'description': 'Measuring effectiveness of health education animations'
      },
      {
        'title': 'Animation of Mathematics Learning for Vocational High School',
        'category': 'Educational Animation',
        'description': 'Geometry transformation learning using participatory design'
      },
      {
        'title': 'Generalized Anxiety Disorder Information Media Through Animation',
        'category': 'Health Animation',
        'description': 'Mental health education for adolescents through animation'
      },
      {
        'title': 'Talking Krishna–Developing 3D Character of Krishna',
        'category': '3D Animation',
        'description': 'Cultural heritage preservation through 3D character development'
      },
      {
        'title': 'Liquid Animation Techniques for Renewable Energy Motion Graphics',
        'category': 'Motion Graphics',
        'description': 'Advanced animation techniques for environmental education'
      },
      {
        'title': 'Augmented Reality untuk Video Stereoscopic Pencak Silat',
        'category': 'Augmented Reality',
        'description': 'Cultural martial arts preservation using AR technology'
      },
      {
        'title': 'Audio Video Vmix Console pada Pertunjukan Live Stream Youtube',
        'category': 'Live Streaming',
        'description': 'Professional live streaming setup for YouTube broadcasts'
      },
    ],
    '2022': [
      {
        'title': 'Background Blurring and Removal for 3D Modelling of Cultural Heritage',
        'category': '3D Modeling',
        'description': 'Advanced techniques for cultural heritage digitization'
      },
      {
        'title': 'Analysis Performance of QoS and QoE Digital Television in Urban Area',
        'category': 'Broadcasting Technology',
        'description': 'Quality of service and experience analysis for digital TV'
      },
      {
        'title': 'Motion Capture Analysis for Basic Taekwondo Movements',
        'category': 'Motion Capture',
        'description': 'Sports movement analysis using motion capture technology'
      },
      {
        'title': 'Integration Functions in IoT Application Server Platform',
        'category': 'IoT Technology',
        'description': 'IoT platform development for smart applications'
      },
      {
        'title': 'Indoor Navigation for PENS Visitors Using Augmented Intelligence',
        'category': 'Augmented Reality',
        'description': 'Smart navigation system for campus visitors'
      },
      {
        'title': 'SEMAR IoT Server Platform with Applications',
        'category': 'IoT Technology',
        'description': 'Comprehensive IoT server platform development'
      },
      {
        'title': 'Immersive Technology on Medical Education',
        'category': 'Medical Technology',
        'description': 'VR/AR applications for medical training and education'
      },
      {
        'title': 'Audio Based Action Recognition for Monitoring Elderly Dementia',
        'category': 'Healthcare Technology',
        'description': 'AI-powered healthcare monitoring system'
      },
    ],
    '2023': [
      {
        'title': 'Participatory Design in the Development of Animated Comic on Website',
        'category': 'Web Animation',
        'description': 'User-centered design approach for web-based animated content'
      },
      {
        'title': '3D Photography System for 3D Model Generation and 3D Printing',
        'category': '3D Technology',
        'description': 'Innovation in photography studio business acceleration'
      },
      {
        'title': 'VR-Integrated Learning Management System',
        'category': 'Virtual Reality',
        'description': 'Immersive learning platform for vocational education'
      },
      {
        'title': 'Multi Extension Implementation on Smart IoT Platform',
        'category': 'IoT Technology',
        'description': 'Scalable IoT platform with multiple extension support'
      },
      {
        'title': 'Interactive Mathematics Animation for Distance Learning',
        'category': 'Educational Technology',
        'description': 'Supporting remote learning through interactive animations'
      },
    ],
    '2024': [
      {
        'title': 'Automation for Digital Twins as Industrial Support Tool',
        'category': 'Industry 4.0',
        'description': 'Supporting industrialization of original Indonesian innovations'
      },
      {
        'title': 'Spatial Big Data Integrated with Smart Monitoring Analytics (SMAR)',
        'category': 'Smart City',
        'description': 'Real-time analytics platform for Surabaya Smart City'
      },
      {
        'title': 'Web-Based Online Examination Platform with Intelligent Supervision',
        'category': 'Educational Technology',
        'description': 'Integrated online testing platform with smart monitoring'
      },
      {
        'title': 'Tracable File Management System Using Blockchain and IPFS',
        'category': 'Blockchain Technology',
        'description': 'Secure and traceable file management system'
      },
      {
        'title': 'Stable Matching with Dynamic Preferences for Student Admission',
        'category': 'Algorithm Research',
        'description': 'Merit-based student admission system optimization'
      },
      {
        'title': 'Virtual Reality Art Gallery Platform',
        'category': 'Virtual Reality',
        'description': 'Immersive digital art exhibition platform'
      },
      {
        'title': 'Enhancing Robotic Learning for Children through AR Application',
        'category': 'Augmented Reality',
        'description': 'Interactive robotics education for children'
      },
      {
        'title': 'Mobile Application for Child Stunting Monitoring',
        'category': 'Healthcare Technology',
        'description': 'User-centered design for health monitoring application'
      },
      {
        'title': 'Blockchain Implementation for Smart Buildings',
        'category': 'Blockchain Technology',
        'description': 'Secure and transparent smart building management'
      },
      {
        'title': 'Seamless Indoor-Outdoor Navigation System using WebXR',
        'category': 'WebXR Technology',
        'description': 'Enhanced navigation experiences with graph-based routing'
      },
    ],
  };

  final List<Color> categoryColors = [
    const Color(0xFF1E88E5), // Blue
    const Color(0xFF4CAF50), // Green
    const Color(0xFFFF9800), // Orange
    const Color(0xFF9C27B0), // Purple
    const Color(0xFFE91E63), // Pink
    const Color(0xFF00BCD4), // Cyan
    const Color(0xFFFF5722), // Deep Orange
    const Color(0xFF795548), // Brown
  ];

  Color getCategoryColor(String category) {
    final categories = researchByYear.values
        .expand((list) => list)
        .map((item) => item['category']!)
        .toSet()
        .toList();
    
    final index = categories.indexOf(category);
    return categoryColors[index % categoryColors.length];
  }

  @override
  Widget build(BuildContext context) {
    String selectedYear = years[selectedYearIndex];
    List<Map<String, String>> researchList = researchByYear[selectedYear] ?? [];
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
                                  Icons.science_rounded,
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
                                      'Penelitian Kami',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF2C3E50),
                                      ),
                                    ),
                                    Text(
                                      'Inovasi dan riset untuk masa depan',
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
                  
                  // Year Selection
                  SliverToBoxAdapter(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: List.generate(years.length, (index) {
                          bool selected = index == selectedYearIndex;
                          return Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedYearIndex = index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                padding: const EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  color: selected ? primaryColor : Colors.transparent,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  years[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: selected ? Colors.white : Colors.grey[600],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                  
                  const SliverToBoxAdapter(child: SizedBox(height: 20)),
                  
                  // Research Count
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        '${researchList.length} Penelitian pada tahun $selectedYear',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                  
                  const SliverToBoxAdapter(child: SizedBox(height: 16)),
                  
                  // Research List
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final research = researchList[index];
                          final categoryColor = getCategoryColor(research['category']!);
                          
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
                                  // Category Header
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                    decoration: BoxDecoration(
                                      color: categoryColor.withOpacity(0.1),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                          decoration: BoxDecoration(
                                            color: categoryColor.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Text(
                                            research['category']!,
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: categoryColor,
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        Icon(
                                          Icons.science_outlined,
                                          size: 16,
                                          color: categoryColor,
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
                                        Text(
                                          research['title']!,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF2C3E50),
                                            height: 1.3,
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          research['description']!,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey[600],
                                            height: 1.4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        childCount: researchList.length,
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