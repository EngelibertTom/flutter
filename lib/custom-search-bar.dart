import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(Icons.search),
          Text("Rechercher...",
          style: TextStyle(fontSize: 14.0, color: Colors.black, decoration: TextDecoration.none))
        ],
      ),
    );
  }
}