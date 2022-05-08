import 'package:flutter/material.dart';

import '../components/home/app_header.dart';
import '../components/home/suggestions.dart';
import '../components/home/tours.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AppHeader(),
          Suggestions(),
          Tours(),
        ],
      ),
    );
  }
}
