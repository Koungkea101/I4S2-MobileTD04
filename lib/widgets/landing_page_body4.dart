import 'package:flutter/material.dart';
import 'package:frontend_mobile/components/card_teacher.dart';
import 'package:frontend_mobile/components/information.dart';

class LandingPageBody4 extends StatefulWidget {
  const LandingPageBody4({Key? key}) : super(key: key);

  @override
  _LandingPageBody4State createState() => _LandingPageBody4State();
}

class _LandingPageBody4State extends State<LandingPageBody4> {

  final List<Map<String, dynamic>> newsList = [
    {
      'title':
          "“Machine learning and AI are the engines driving the technological revolution of our time, transforming the way we work, live, and innovate”",
      'image': const AssetImage('assets/images/news.png'),
      'name': "Dr. VALY Dona",
      'position': "Professor @ITC,  Cofounder @ Worktency",
      'iconOne': Icons.memory,
      'iconTwo': Icons.smart_toy,
      'hashtagOne': "Machine learning",
      'hashtagTwo': "Artificial Intelligent",
    },
    // Duplicate with slight variation for demo (you can customize these)
    {
      'title': "“AI reshapes industries and powers innovation at scale.”",
      'image': const AssetImage('assets/images/news.png'),
      'name': "HOK Tin",
      'position': "AI Developer",
      'iconOne': Icons.computer,
      'iconTwo': Icons.memory,
      'hashtagOne': "AI",
      'hashtagTwo': "Innovation",
    },
    {
      'title': "“Empower your future with self-development skills.”",
      'image': const AssetImage('assets/images/news.png'),
      'name': "HENG Rathpisey",
      'position': "Lecturer @ITC",
      'iconOne': Icons.school,
      'iconTwo': Icons.person,
      'hashtagOne': "Self Development",
      'hashtagTwo': "Growth",
    },
    {
      'title': "“Education is the most powerful weapon you can use.”",
      'image': const AssetImage('assets/images/news.png'),
      'name': "Dr. VALY Dona",
      'position': "Professor @ITC",
      'iconOne': Icons.auto_stories,
      'iconTwo': Icons.lightbulb,
      'hashtagOne': "Education",
      'hashtagTwo': "Learning",
    },
    {
      'title': "“Technology empowers creativity and connectivity.”",
      'image': const AssetImage('assets/images/news.png'),
      'name': "HOK Tin",
      'position': "Web Developer",
      'iconOne': Icons.web,
      'iconTwo': Icons.code,
      'hashtagOne': "Web",
      'hashtagTwo': "Technology",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Meet Our Teachers',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'inriaSans',
                    color: Color(0xFF2F2F2F)),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardTeacher(
                      name: "Dr. VALY Dona",
                      image: AssetImage('assets/images/dona.jpg'),
                      position: "Researcher, AI Specialist"),
                  CardTeacher(
                      name: "HOK Tin",
                      image: AssetImage('assets/images/tin.jpg'),
                      position: "Web Developer"),
                  CardTeacher(
                      name: "HENG Rathpisey",
                      image: AssetImage('assets/images/sey.jpg'),
                      position: "Lecturer at ITC"),
                ],
              ),
              const SizedBox(height: 30),
              // title
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 40,
                    color: Color(0xFFFF7A00),
                  ),
                  Transform.translate(
                    offset: const Offset(-20, 0), // shift left by 10 pixels
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 40,
                      color: Color(0xFFFF7A00),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(
                        -40, 0), // shift even more for tighter overlap
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 40,
                      color: Color(0xFFFF7A00),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-40, 0),
                    child: RichText(
                      text: const TextSpan(
                        text: 'To reach our only One goal,',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'inriaSans',
                        ),
                        children: [
                          TextSpan(
                            text: ' \n',
                          ),
                          WidgetSpan(
                            child: SizedBox(height: 30),
                          ),
                          TextSpan(
                            text: 'what we can share with you today',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: newsList.length,
                    itemBuilder: (context, index) {
                      final info = newsList[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Information(
                          title: info['title'],
                          image: info['image'],
                          name: info['name'],
                          position: info['position'],
                          iconOne: info['iconOne'],
                          iconTwo: info['iconTwo'],
                          hashtagOne: info['hashtagOne'],
                          hashtagTwo: info['hashtagTwo'],
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "See More",
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF164F89),
                            ),
                          ),
                          const SizedBox(height: 4), // This is the gap
                          Container(
                            height: 2,
                            width: 40, // You can adjust the width as needed
                            color: const Color(0xFF164F89),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
