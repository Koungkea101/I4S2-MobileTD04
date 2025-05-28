import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key, required this.hintText, this.onSubmitted});
  final String hintText;
  final Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        onSubmitted: onSubmitted,

        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search, color: Colors.grey),
          suffixIcon: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              // Implement clear search functionality
            },
          ),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: 'Ubuntu',
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }
}
