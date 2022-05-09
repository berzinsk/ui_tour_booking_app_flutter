import 'package:flutter/material.dart';

import './travel_summary_header.dart';
import './travel_summary_details.dart';

class TravelSummary extends StatelessWidget {
  const TravelSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TravelSummaryHeader(),
        const TravelSummaryDetails(),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                'if you wish to experience breezy. beaches, swaying palm trees,'
                'and quirky beach shacks, make your way to Bali.'
                'Our Bali tour is dotted with volcanic mountains, iconic rice paddies,'
                'and vibrant nightlife. Now that you have booked your experiential tour package.',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xffa3abbf),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
