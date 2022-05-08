import 'package:flutter/material.dart';

class TravelSummaryHeader extends StatelessWidget {
  const TravelSummaryHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Travel summary',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: const [
              Text(
                'See more',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal),
              ),
              Image(
                image: AssetImage('asset/images/arrow-right.png'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
