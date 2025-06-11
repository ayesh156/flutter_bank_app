import 'package:flutter/material.dart';

class SearchSomething extends StatelessWidget {
  const SearchSomething({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: Colors.grey[600], size: 20),
          hintText: 'Search for something',
          border: InputBorder.none,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 12),
        ),
        style: TextStyle(color: Colors.grey[800], fontSize: 16),
      ),
    );
  }
}
