import 'package:flutter/material.dart';
import 'package:frontend_mobile/widgets/small_widget/searchbar.dart' as custom;
import 'package:frontend_mobile/components/footer_widget.dart';
import 'package:frontend_mobile/components/card_search_result.dart';

class OnlineSearchScreen extends StatelessWidget {
  OnlineSearchScreen({super.key});
  // Sample data for search results for all
  final List<Map<String, String>> searchResultsAll = [
    {
      'title': 'Computer Network',
      'description':
          'A network is a system that links computers and devices to share resources and exchange data, enabling communication and access to shared services, whether locally or over the internet.',
      'image': 'assets/images/word.png',
    },
    {
      'title': 'Computer Network',
      'description':
          'A network is a system that links computers and devices to share resources and exchange data, enabling communication and access to shared services, whether locally or over the internet.',
      'image': 'assets/images/word.png',
    },
    {
      'title': 'Computer Network',
      'description':
          'A network is a system that links computers and devices to share resources and exchange data, enabling communication and access to shared services, whether locally or over the internet.',
      'image': 'assets/images/word.png',
    },
    {
      'title': 'Computer Network',
      'description':
          'A network is a system that links computers and devices to share resources and exchange data, enabling communication and access to shared services, whether locally or over the internet.',
      'image': 'assets/images/word.png',
    },
    {
      'title': 'Computer Network',
      'description':
          'A network is a system that links computers and devices to share resources and exchange data, enabling communication and access to shared services, whether locally or over the internet.',
      'image': 'assets/images/word.png',
    },
    {
      'title': 'Computer Network',
      'description':
          'A network is a system that links computers and devices to share resources and exchange data, enabling communication and access to shared services, whether locally or over the internet.',
      'image': 'assets/images/word.png',
    },
    {
      'title': 'Computer Network',
      'description':
          'A network is a system that links computers and devices to share resources and exchange data, enabling communication and access to shared services, whether locally or over the internet.',
      'image': 'assets/images/word.png',
    },
    {
      'title': 'Computer Network',
      'description':
          'A network is a system that links computers and devices to share resources and exchange data, enabling communication and access to shared services, whether locally or over the internet.',
      'image': 'assets/images/word.png',
    },
    // Add more sample results as needed
  ];
  // Sample data for search results for courses
  final List<Map<String, String>> searchResultsCourses = [
    {
      'title': 'Introduction to Computer Networks Course',
      'description':
          'Learn the fundamentals of computer networking, including protocols, architectures, and security.',
      'image': 'assets/images/word.png',
    },
    {
      'title': 'Advanced Network Security Course',
      'description':
          'Explore advanced techniques for securing computer networks against threats and vulnerabilities.',
      'image': 'assets/images/word.png',
    },
    // Add more sample courses as needed
  ];

  // Sample data for projects
  final List<Map<String, String>> searchResultsProjects = [
    {
      'title': 'Network Security Project',
      'description':
          'A comprehensive project on implementing network security protocols and firewalls.',
      'image': 'assets/images/word.png',
    },
    {
      'title': 'IoT Network Design',
      'description':
          'Design and implementation of IoT network infrastructure for smart homes.',
      'image': 'assets/images/word.png',
    },
  ];

  // Sample data for PRO sessions
  final List<Map<String, String>> searchResultsProSessions = [
    {
      'title': 'Advanced Networking Masterclass',
      'description':
          'Professional session covering enterprise-level networking solutions and best practices.',
      'image': 'assets/images/word.png',
    },
    {
      'title': 'Cloud Network Architecture',
      'description':
          'Expert-led session on designing scalable cloud network architectures.',
      'image': 'assets/images/word.png',
    },
  ];

  // Sample data for lecturers
  final List<Map<String, String>> searchResultsLecturers = [
    {
      'title': 'Mr. Hok Tin',
      'description':
          'Professor of Computer Networks with 15+ years of experience in network security and protocols.',
      'image': 'assets/images/tin.jpg',
    },
    {
      'title': 'Mr. Heng Rathpisey',
      'description':
          'Expert in wireless networks and IoT systems, published researcher in network optimization.',
      'image': 'assets/images/sey.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          // title: const Text('Frontend Page'),
          backgroundColor: Colors.white,
          elevation: 0,
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                //logo
                Image.asset('assets/logo.jpg', height: 40),
                const SizedBox(width: 8),
                //add search and profile icon
                Spacer(),
                IconButton(
                  icon: Icon(Icons.search, color: Colors.blue[900], size: 40),
                  onPressed: () {
                    // Add search action here
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person, color: Colors.blue[900], size: 40),
                  onPressed: () {
                    // Add profile action here
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Add some top padding for status bar
            const SizedBox(height: 20),
            // Add the searchbar at the top
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: custom.SearchBar(hintText: 'Network'),
            ),
            // Placeholder for search results
            const SizedBox(height: 10),
            DefaultTabController(
              length: 5,
              child: Column(
                children: [
                  TabBar(
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      fontFamily: 'Ubuntu',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                    padding: EdgeInsets.zero,
                    indicatorColor: Color(0xFFFF7A00),
                    tabs: [
                      Tab(text: 'All (43)'),
                      Tab(text: 'Courses (22)'),
                      Tab(text: 'Projects (3)'),
                      Tab(text: 'PRO sessions (3)'),
                      Tab(text: 'Lecturers (3)'),
                    ],
                  ),
                  SizedBox(
                    height: 1000,
                    child: TabBarView(
                      children: [
                        // All tab
                        ListView.builder(
                          itemCount: searchResultsAll.length,
                          itemBuilder: (context, index) {
                            return CardSearchResult(
                              title: searchResultsAll[index]['title']!,
                              description:
                                  searchResultsAll[index]['description']!,
                              image: AssetImage(
                                searchResultsAll[index]['image']!,
                              ),
                            );
                          },
                        ),
                        // Courses tab
                        ListView.builder(
                          itemCount: searchResultsCourses.length,
                          itemBuilder: (context, index) {
                            return CardSearchResult(
                              title: searchResultsCourses[index]['title']!,
                              description:
                                  searchResultsCourses[index]['description']!,
                              image: AssetImage(
                                searchResultsCourses[index]['image']!,
                              ),
                            );
                          },
                        ),
                        // Projects tab
                        ListView.builder(
                          itemCount: searchResultsProjects.length,
                          itemBuilder: (context, index) {
                            return CardSearchResult(
                              title: searchResultsProjects[index]['title']!,
                              description:
                                  searchResultsProjects[index]['description']!,
                              image: AssetImage(
                                searchResultsProjects[index]['image']!,
                              ),
                            );
                          },
                        ),
                        // PRO sessions tab
                        ListView.builder(
                          itemCount: searchResultsProSessions.length,
                          itemBuilder: (context, index) {
                            return CardSearchResult(
                              title: searchResultsProSessions[index]['title']!,
                              description:
                                  searchResultsProSessions[index]['description']!,
                              image: AssetImage(
                                searchResultsProSessions[index]['image']!,
                              ),
                            );
                          },
                        ),
                        // Lecturers tab
                        ListView.builder(
                          itemCount: searchResultsLecturers.length,
                          itemBuilder: (context, index) {
                            return CardSearchResult(
                              title: searchResultsLecturers[index]['title']!,
                              description:
                                  searchResultsLecturers[index]['description']!,
                              image: AssetImage(
                                searchResultsLecturers[index]['image']!,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: FooterWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
