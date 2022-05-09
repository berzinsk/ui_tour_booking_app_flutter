import 'package:flutter/material.dart';

class TravelSummaryFooter extends StatelessWidget {
  const TravelSummaryFooter({
    Key? key,
    required this.price,
  }) : super(key: key);

  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              '\$$price',
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const Text(
              ' /day',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xffa3abbf),
              ),
            ),
          ],
        ),
        OutlinedButton(
          onPressed: () {},
          child: Row(
            children: const [
              Text(
                'Book Now',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.0),
                child: Image(
                  image: AssetImage('asset/images/arrow-circle-right.png'),
                ),
              )
            ],
          ),
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 12.0,
            ),
            splashFactory: NoSplash.splashFactory,
            backgroundColor: const Color(0xff686dcd),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ],
    );
  }
}
