import 'package:flutter/material.dart';

import 'tour_item.dart';
import '../model/tour.dart';

final _tourList = [
  Tour(
    name: 'Western Desert',
    country: 'Egypt',
    rating: 4.9,
    startDate: DateTime.fromMillisecondsSinceEpoch(1657450830000),
    endDate: DateTime.fromMillisecondsSinceEpoch(1657710030000),
    price: 450,
    imageName: 'image3',
  ),
  Tour(
    name: 'Rocky mountain',
    country: 'Canada',
    rating: 4.8,
    startDate: DateTime.fromMillisecondsSinceEpoch(1657537230000),
    endDate: DateTime.fromMillisecondsSinceEpoch(1657882830000),
    price: 200,
    imageName: 'image4',
  ),
  Tour(
    name: 'Liepājas ielas',
    country: 'Latvia',
    rating: 4.9,
    startDate: DateTime.fromMillisecondsSinceEpoch(1657623630000),
    endDate: DateTime.fromMillisecondsSinceEpoch(1658314830000),
    price: 100,
    imageName: 'image5',
  ),
  Tour(
    name: 'Ventspils pludmales',
    country: 'Latvia',
    rating: 4.9,
    startDate: DateTime.fromMillisecondsSinceEpoch(1657623630000),
    endDate: DateTime.fromMillisecondsSinceEpoch(1657969230000),
    price: 100,
    imageName: 'image6',
  ),
];

class Tours extends StatelessWidget {
  const Tours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Text(
              'The best tours',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: ListView.separated(
              itemBuilder: (context, index) {
                Tour tour = _tourList[index];

                return TourItem(tour: tour);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 16.0,
                );
              },
              itemCount: _tourList.length,
            ),
          ),
        ],
      ),
    );
  }
}
