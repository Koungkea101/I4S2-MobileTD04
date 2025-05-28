import 'package:flutter/material.dart';
import 'package:frontend_mobile/components/card_online.dart';

class CardFeatureOnline extends StatelessWidget {
  final String title;

  const CardFeatureOnline({super.key, this.title = 'Online Courses'});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Color(0xFFFF7A00),
              size: 30,
              weight: 900,
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                fontFamily: 'Ubuntu',
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        // Placeholder for card content - you can replace this with your actual card widget
        const cardonline(),
        const SizedBox(height: 20),
        // Add pagination dots
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5,
            (index) => Container(
              width: 20,
              height: 4,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color:
                    index == 0 ? const Color(0xFFFF7A00) : Colors.grey.shade300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
