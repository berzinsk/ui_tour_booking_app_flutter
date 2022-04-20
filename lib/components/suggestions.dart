import 'package:flutter/material.dart';

import 'suggestion_item.dart';

class Suggestion {
  Suggestion({
    required this.name,
    required this.location,
    required this.rating,
    required this.imageName,
  });

  String name;
  String location;
  double rating;
  String imageName;
}

final _suggestionList = [
  Suggestion(
    name: 'Nusa Pedina',
    location: 'Bali, Indonesia',
    rating: 4.5,
    imageName: 'image1',
  ),
  Suggestion(
    name: 'Wachau Forest',
    location: 'River Danube, Austria',
    rating: 4.8,
    imageName: 'image2',
  ),
  Suggestion(
    name: 'Place No 3',
    location: 'Location No 3',
    rating: 4.9,
    imageName: 'image3',
  ),
  Suggestion(
    name: 'Place No 4',
    location: 'Location No 4',
    rating: 4.2,
    imageName: 'image4',
  ),
  Suggestion(
    name: 'Place No 5',
    location: 'Location No 5',
    rating: 4.4,
    imageName: 'image5',
  ),
];

class Suggestions extends StatelessWidget {
  const Suggestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Suggestions for you',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            TextButton(
              onPressed: () {
                print('See all button pressed');
              },
              child: Row(
                children: const [
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                  Image(
                    image: AssetImage(
                      'asset/images/arrow-right.png',
                    ),
                  )
                ],
              ),
              style: TextButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 160,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: _suggestionList.length,
            itemBuilder: (context, index) {
              Suggestion item = _suggestionList[index];

              return SuggestionItem(suggestion: item);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 16.0,
              );
            },
          ),
        )
      ],
    );
  }
}
