import 'package:flutter/material.dart';

class LandingPageBody2 extends StatefulWidget {
  const LandingPageBody2({Key? key}) : super(key: key);

  @override
  _LandingPageBody2State createState() => _LandingPageBody2State();
}

class _LandingPageBody2State extends State<LandingPageBody2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            // backgroundColor: Colors.white,
            children: [
              // each card
              _cardTypeLearning(image: AssetImage('assets/images/card1.png'),
                  title: 'Expert Instructor'),
              const SizedBox(width: 16),
              _cardTypeLearning(image: AssetImage('assets/images/card2.png'),
                  title: 'Flexible Learning'),
              const SizedBox(width: 16),
              _cardTypeLearning(image: AssetImage('assets/images/card3.png'),
                  title: 'Hands-on learning'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardTypeLearning({
    required ImageProvider image,
    required String title,
  }) {
    return Container(
      width: 132,
      height: 126,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFF8402),
            ),
          ),
        ],
      ),
    );
  }
}
