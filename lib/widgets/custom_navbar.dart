import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'landing_page_body.dart';
import 'landing_page_body2.dart';
import 'landing_page_body3.dart';
import 'landing_page_body4.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({super.key});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  static const List<Widget> _page = [
    Center(
      child: Text(
        'Explore',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        'My Courses',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        'Online Courses',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        'Categories',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
    ),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      body: _selectedIndex == 0 ? _buildMainContent() : _page[_selectedIndex],
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: BottomAppBar(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNavItem(Icons.home, 'Home', 0),
                  _buildNavItem(Icons.book, 'Courses', 1),
                  _buildNavItem(Icons.play_circle, 'Online', 2),
                  _buildNavItem(Icons.category, 'Categories', 3),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMainContent() {
    return SingleChildScrollView(
      child: Column(

        children: const [
          LandingPageBody(key: Key('landing1')),
          SizedBox(height: 20), // Add some spacing between sections
          LandingPageBody2(key: Key('landing2')),
          SizedBox(height: 20), // Add some spacing between sections
          LandingPageBody3(key: Key('landing3')),
          SizedBox(height: 20), // Add some spacing between sections
          LandingPageBody4(key: Key('landing4')),
          SizedBox(height: 20), // Add some spacing between sections
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? const Color(0xFFFF8402) : Colors.grey,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? const Color(0xFFFF8402) : Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
