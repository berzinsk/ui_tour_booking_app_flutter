import 'package:flutter/material.dart';

class TravelSummaryDetailsItem extends StatelessWidget {
  const TravelSummaryDetailsItem({
    Key? key,
    required this.iconName,
    required this.title,
    required this.detailText,
  }) : super(key: key);

  final String iconName;
  final String title;
  final String detailText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40.0,
          height: 40.0,
          color: const Color(0xff131316),
          child: Image(
            image: AssetImage('asset/images/$iconName.png'),
            width: 24.0,
            height: 24.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xff575b66),
                  fontSize: 12.0,
                ),
              ),
              Text(
                detailText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
