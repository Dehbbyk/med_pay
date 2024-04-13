import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(20)
      ),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search for bank',
            hintStyle: TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.all(10),
            border: InputBorder.none
        ),
      ),
    );
  }
}