import 'package:flutter/material.dart';

class CardTeacher extends StatelessWidget {
  final String name;
  final ImageProvider image;
  final String position;

  const CardTeacher({
    super.key,
    required this.name,
    required this.image,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 200,
      child: Card(
        color: const Color.fromARGB(255, 235, 236, 237),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 140,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
                color: Color(0xFFF8F8F8),
                border: Border(
                  bottom: BorderSide(color: Color(0xFFDEDEDE), width: 1),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
                child: Image(
                  image: image,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // teacher info
            Column(
              children: [
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Ubuntu',
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  position,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF7A7A7A),
                    fontSize: 9,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'inriaSans',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
