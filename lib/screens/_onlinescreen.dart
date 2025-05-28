import 'package:flutter/material.dart';
import 'package:frontend_mobile/widgets/small_widget/searchbar.dart' as custom;
import 'package:frontend_mobile/components/card_course.dart';
import 'package:frontend_mobile/components/footer_widget.dart';
import 'package:frontend_mobile/components/card_feature_online.dart';
import '../screens/_online_searchscreen.dart';

class OnlineScreen extends StatelessWidget {
  OnlineScreen({super.key});

  final Map<String, List<Widget>> _coursesByCategory = {
    'Cyber Security': List.generate(
      5,
      (index) => const CardCourse(
        title: 'Cyber Security lessons',
        // Using default values for other parameters
      ),
    ),
    'Network Administrator': List.generate(
      5,
      (index) => const CardCourse(
        title: 'Network Administrator lessons',
        // Using default values for other parameters
      ),
    ),
    'Cryptography': List.generate(
      5,
      (index) => const CardCourse(
        title: 'Cryptography lessons',
        // Using default values for other parameters
      ),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Add some top padding for status bar
            const SizedBox(height: 20),
            // Add the searchbar at the top
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: custom.SearchBar(
                hintText: 'Find your interested course ....',
                onSubmitted: (searchText) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OnlineSearchScreen(),
                    ),
                  );
                },
              ),
            ),
            // card feature online
            const SizedBox(height: 20),
            const CardFeatureOnline(title: 'Explore your favorite subjects'),
            const SizedBox(height: 20),
            const CardFeatureOnline(title: 'Build your competency with us!'),
            const SizedBox(height: 20),
            const CardFeatureOnline(title: 'Best recommended for you!'),
            const SizedBox(height: 60),
            // cyber title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Cyber Security',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Ubuntu',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),

            // Horizontal scroll of courses
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: _coursesByCategory['Cyber Security']?.length ?? 0,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      right:
                          index <
                                  (_coursesByCategory['Cyber Security']
                                              ?.length ??
                                          0) -
                                      1
                              ? 16.0
                              : 0,
                    ),
                    child: _coursesByCategory['Cyber Security']![index],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        index == 0
                            ? const Color(0xFFFF7A00)
                            : Colors.grey.shade300,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Nertwork Administrator part
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Network Administrator',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Ubuntu',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            // Horizontal scroll of courses
            SizedBox(
              height: 306,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount:
                    _coursesByCategory['Network Administrator']?.length ?? 0,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      right:
                          index <
                                  (_coursesByCategory['Network Administrator']
                                              ?.length ??
                                          0) -
                                      1
                              ? 16.0
                              : 0,
                    ),
                    child: _coursesByCategory['Network Administrator']![index],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        index == 0
                            ? const Color(0xFFFF7A00)
                            : Colors.grey.shade300,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Cryptography part
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Cryptography',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Ubuntu',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            // Horizontal scroll of courses
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: _coursesByCategory['Cryptography']?.length ?? 0,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      right:
                          index <
                                  (_coursesByCategory['Cryptography']?.length ??
                                          0) -
                                      1
                              ? 16.0
                              : 0,
                    ),
                    child: _coursesByCategory['Cryptography']![index],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        index == 0
                            ? const Color(0xFFFF7A00)
                            : Colors.grey.shade300,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

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
