import 'package:flutter/material.dart';

class CardSearchResult extends StatelessWidget {
  final String title;
  final String description;
  final ImageProvider image;

  const CardSearchResult({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 394,
      height: 180,
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          // Main content row
          Expanded(
            child: Row(
              children: [
                // Image section
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 101,
                    height: 98,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(image: image, fit: BoxFit.cover),
                    ),
                  ),
                ),
                // Text section
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text(
                          title,
                          style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          description,
                          style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                          Icon(
                            Icons.signal_wifi_0_bar_sharp,
                            size: 16,
                            color: Colors.grey.shade600,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'កំរិតដំបូង',
                            style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                          ),
                          const SizedBox(width: 20),
                          Icon(
                            Icons.supervisor_account_outlined,
                            size: 16,
                            color: Colors.grey.shade600,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '99​ ​នាក់បានរៀន',
                            style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                          ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Bottom section with icon and label
          
        ],
      ),
    );
  }
}
