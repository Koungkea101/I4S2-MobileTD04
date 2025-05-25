import 'package:flutter/material.dart';

class LandingPageBody extends StatelessWidget {
  const LandingPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Add title
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Unlock Your Potential with ',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inria Serif',
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Worktency',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inria Serif',
                          color: Colors.orange[900],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Add subtitle
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'Discover industry-leading courses designed to equip you with real-world skills. Join our community and start your journey to success today.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontFamily: 'Ubuntu',
                    height: 2,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              //image 1
              Center(
                child: Image.asset(
                  'assets/landingpage1.png',
                  width: 314,
                  height: 290,
                ),
              ),
              const SizedBox(height: 25),
              //button explore
              Center(
                child: SizedBox(
                  width: 220, // Increased width from 200 to 220
                  child: ElevatedButton(
                    onPressed: () {
                      // Add action for the button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF4F5FA),
                      padding: const EdgeInsets.symmetric(
                        horizontal:
                            20, // Reduced horizontal padding from 40 to 20
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center the content
                      mainAxisSize:
                          MainAxisSize.min, // Make row take minimum space
                      children: [
                        Icon(Icons.explore, color: Color(0xFF164F89)),
                        const SizedBox(width: 8),
                        const Text(
                          'Explore Now',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF164F89),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              // join button
              Center(
                child: SizedBox(
                  width: 250, // Increased width from 200 to 220
                  child: ElevatedButton(
                    onPressed: () {
                      // Add action for the button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[700],
                      padding: const EdgeInsets.symmetric(
                        horizontal:
                            20, // Reduced horizontal padding from 40 to 20
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center the content
                      mainAxisSize:
                          MainAxisSize.min, // Make row take minimum space
                      children: [
                        Icon(Icons.explore, color: Colors.white),
                        const SizedBox(width: 8),
                        const Text(
                          'Join as an Educator',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Add more widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}
