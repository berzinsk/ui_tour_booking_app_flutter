import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/tour.dart';
import './rating.dart';

class TourItem extends StatelessWidget {
  const TourItem({
    Key? key,
    required this.tour,
  }) : super(key: key);

  final Tour tour;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff131316),
      ),
      height: 112.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image(
                image: AssetImage('asset/images/${tour.imageName}.jpeg'),
                width: 88,
                height: 88,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          tour.name,
                          style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                        Rating(rating: tour.rating),
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 4.0),
                          child: Image(
                              image: AssetImage('asset/images/calendar.png')),
                        ),
                        Text(
                          '${DateFormat('dd').format(tour.startDate)} - '
                          '${DateFormat('dd MMM yyyy').format(tour.endDate)}',
                          style: const TextStyle(fontSize: 13.0),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 4.0),
                              child: Image(
                                  image: AssetImage('asset/images/dollar.png')),
                            ),
                            Text(
                              '${tour.price}',
                              style: const TextStyle(fontSize: 13.0),
                            ),
                            const Text(
                              ' / Day',
                              style: TextStyle(
                                color: Color(0xff575b66),
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 26.0),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 4.0),
                              child: Image(
                                color: Color(0xff575b66),
                                image: AssetImage('asset/images/location.png'),
                              ),
                            ),
                            Text(
                              tour.country,
                              style: const TextStyle(fontSize: 13.0),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
