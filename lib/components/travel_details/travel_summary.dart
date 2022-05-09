import 'package:flutter/material.dart';

import './travel_summary_header.dart';
import './travel_summary_details.dart';

class TravelSummary extends StatelessWidget {
  const TravelSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TravelSummaryHeader(),
        TravelSummaryDetails(),
      ],
    );
  }
}
