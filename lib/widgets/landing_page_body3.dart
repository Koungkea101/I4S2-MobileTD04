import 'package:flutter/material.dart';
import 'package:frontend_mobile/components/card_course.dart';
import 'package:frontend_mobile/components/horizontal_category.dart';
import 'dart:math';

class LandingPageBody3 extends StatefulWidget {
  const LandingPageBody3({Key? key}) : super(key: key);

  @override
  _LandingPageBody3State createState() => _LandingPageBody3State();
}

class _LandingPageBody3State extends State<LandingPageBody3> {
  final ScrollController _topRowController = ScrollController();
  final ScrollController _bottomRowController = ScrollController();

  // List of categories
  final List<String> categories = [
    'Artificial Intelligent',
    'Machine Learning',
    'Self Development',
  ];
  
  int _selectedCategoryIndex = 0;

  final Map<String, List<Widget>> _coursesByCategory = {
    'Artificial Intelligent': List.generate(
      10,
      (index) => const CardCourse(
        title: 'Artificial Intelligence',
        // Using default values for other parameters
      ),
    ),
    'Machine Learning': List.generate(
      5,
      (index) => const CardCourse(
        title: 'Machine Learning',
        // Using default values for other parameters
      ),
    ),
    'Self Development': List.generate(
      5,
      (index) => const CardCourse(
        title: 'Self Development',
        // Using default values for other parameters
      ),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Featured Course',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'inriaSans',
                  color: Color(0xFF2F2F2F),
                ),
              ),
              const SizedBox(height: 20),
              HorizontalCategory(
                categories: categories,
                selectedIndex: _selectedCategoryIndex,
                onCategoryTap: (index) {
                  setState(() {
                    _selectedCategoryIndex = index;
                  });
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                child: Column(
                  children: [
                    // First row
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        controller: _topRowController,
                        scrollDirection: Axis.horizontal,
                        itemCount: min(
                          5,
                          _coursesByCategory[categories[_selectedCategoryIndex]]
                                  ?.length ??
                              0,
                        ),
                        itemBuilder: (context, index) {
                          final course =
                              _coursesByCategory[categories[_selectedCategoryIndex]]![index];
                          return Container(
                            width: 163,
                            margin: const EdgeInsets.only(right: 16),
                            child: course,
                          );
                        },
                      ),
                    ),

                    // Second row (if more than 5 items)
                    if ((_coursesByCategory[categories[_selectedCategoryIndex]]
                                ?.length ??
                            0) >
                        5)
                      Column(
                        children: [
                          const SizedBox(height: 20),
                          SizedBox(
                            height: 300,
                            child: ListView.builder(
                              controller: _bottomRowController,
                              scrollDirection: Axis.horizontal,
                              itemCount: min(
                                5,
                                (_coursesByCategory[categories[_selectedCategoryIndex]]
                                            ?.length ??
                                        0) -
                                    5,
                              ),
                              itemBuilder: (context, index) {
                                final course =
                                    _coursesByCategory[categories[_selectedCategoryIndex]]![index +
                                        5];
                                return Container(
                                  width: 163,
                                  margin: const EdgeInsets.only(right: 16),
                                  child: course,
                                );
                              },
                            ),
                          ),
                        ],
                      ),

                    const SizedBox(height: 12),

                    // Optional: You can add a simple indicator showing the current category
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        categories.length,
                        (index) => Container(
                          width: 8,
                          height: 8,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                index == _selectedCategoryIndex
                                    ? const Color(0xFFFF7A00)
                                    : Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
