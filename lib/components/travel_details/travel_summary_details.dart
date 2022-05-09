import 'package:flutter/material.dart';

import './travel_summary_details_item.dart';

class TravelSummaryDetails extends StatelessWidget {
  const TravelSummaryDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        TravelSummaryDetailsItem(
          iconName: 'clock',
          title: 'Duration',
          detailText: '5 Days',
        ),
        TravelSummaryDetailsItem(
          iconName: 'routing',
          title: 'Distance',
          detailText: '411 KM',
        ),
        TravelSummaryDetailsItem(
          iconName: 'ranking',
          title: 'Rating',
          detailText: '4.5',
        ),
      ],
    );
  }
}
