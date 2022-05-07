import 'package:flutter/material.dart';

import 'tour_item.dart';

class Tour {
  Tour({
    required this.name,
    required this.country,
    required this.rating,
    required this.startDate,
    required this.endDate,
    required this.price,
  });
  String name;
  String country;
  double rating;
  DateTime startDate;
  DateTime endDate;
  double price;
}

final _tourList = [
  Tour(
    name: 'Western Desert',
    country: 'Egypt',
    rating: 4.9,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    price: 450,
  ),
  Tour(
    name: 'Rocky mountain',
    country: 'Canada',
    rating: 4.8,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    price: 200,
  ),
  Tour(
    name: 'Liepājas ielas',
    country: 'Latvia',
    rating: 4.9,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    price: 100,
  ),
  Tour(
    name: 'Ventspils pludmales',
    country: 'Latvia',
    rating: 4.9,
    startDate: DateTime.now(),
    endDate: DateTime.now(),
    price: 100,
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
                Tour tour = Tour(
                  country: 'Egypt',
                  name: '',
                  endDate: DateTime.now(),
                  price: 450,
                  rating: 4.9,
                  startDate: DateTime.now(),
                );

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
