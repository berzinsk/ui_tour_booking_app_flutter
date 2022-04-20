import 'package:flutter/material.dart';
import 'package:tour_booking_app/components/suggestions.dart';

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
      width: 140.0,
      height: 160.0,
    );
  }
}
