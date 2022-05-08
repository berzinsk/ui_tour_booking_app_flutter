import 'package:flutter/material.dart';

import '../components/travel_details/travel_images.dart';

class TravelDetails extends StatelessWidget {
  const TravelDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: const [
          TravelImages(),
        ],
      ),
    );
  }
}
