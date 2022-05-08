import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key? key,
    required this.rating,
    this.backgroundColor = Colors.black,
  }) : super(key: key);

  final double rating;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Text(
              '$rating',
              style: const TextStyle(fontSize: 10.0),
            ),
            const Image(
              image: AssetImage('asset/images/star.png'),
              width: 12.0,
              height: 12.0,
            )
          ],
        ),
      ),
    );
  }
}
