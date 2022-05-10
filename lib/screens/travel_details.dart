import 'package:flutter/material.dart';

import '../components/travel_details/travel_header_image.dart';
import '../components/travel_details/travel_images.dart';
import '../components/travel_details/travel_summary.dart';

class TravelDetails extends StatelessWidget {
  const TravelDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: const [
          TravelHeaderImage(),
          TravelImages(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: TravelSummary(),
            ),
          ),
        ],
      ),
    );
  }
}
