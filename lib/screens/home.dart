import 'package:flutter/material.dart';

import '../components/app_header.dart';
import '../components/suggestions.dart';
import '../components/tours.dart';

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
