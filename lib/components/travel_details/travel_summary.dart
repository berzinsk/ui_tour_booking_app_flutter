import 'package:flutter/material.dart';

import './travel_summary_header.dart';
import './travel_summary_details.dart';
import './travel_description.dart';
import './travel_summary_footer.dart';

class TravelSummary extends StatelessWidget {
  const TravelSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TravelSummaryHeader(),
        TravelSummaryDetails(),
        Padding(
          padding: EdgeInsets.only(top: 26.0),
          child: TravelDescription(),
        ),
        Spacer(),
        TravelSummaryFooter(price: '250')
      ],
    );
  }
}
