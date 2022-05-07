import 'package:flutter/material.dart';

import 'tours.dart';

class TourItem extends StatelessWidget {
  const TourItem({
    Key? key,
    required this.tour,
  }) : super(key: key);

  final Tour tour;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff131316)),
      height: 112.0,
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Text('sample'),
      ),
    );
  }
}
