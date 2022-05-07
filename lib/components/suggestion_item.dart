import 'package:flutter/material.dart';

import 'package:tour_booking_app/components/suggestions.dart';
import './rating.dart';

class SuggestionItem extends StatelessWidget {
  const SuggestionItem({
    Key? key,
    required this.suggestion,
  }) : super(key: key);

  final Suggestion suggestion;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: AssetImage('asset/images/${suggestion.imageName}.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xff000000).withOpacity(0.0),
              const Color(0xff000000).withOpacity(0.42)
            ],
          ),
        ),
        width: 140.0,
        height: 160.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                  child: Rating(
                    rating: suggestion.rating,
                    backgroundColor: Colors.black.withOpacity(0.4),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    suggestion.name,
                    style: const TextStyle(fontSize: 14.0),
                  ),
                  Row(
                    children: [
                      const Image(
                        image: AssetImage('asset/images/location.png'),
                        width: 12.0,
                        height: 12.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          suggestion.location,
                          style: const TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
