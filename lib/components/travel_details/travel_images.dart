import 'package:flutter/material.dart';

final _images = [
  'image1.jpeg',
  'image2.jpeg',
  'image3.jpeg',
  'image4.jpeg',
  'image5.jpeg',
  'image6.jpeg'
];

class TravelImages extends StatelessWidget {
  const TravelImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.black,
              ),
              height: 76.0,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Image(
                      image: AssetImage('asset/images/${_images[index]}'),
                      width: 52.0,
                      height: 52.0,
                      fit: BoxFit.cover,
                    ),
                  );
                }),
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 12.0,
                  );
                },
                itemCount: _images.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
