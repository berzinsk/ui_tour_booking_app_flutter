import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('asset/images/profile.png'),
          radius: 20.0,
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Welcome back'),
              Text('Karlis Berzins'),
            ],
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Image.asset(
            'asset/images/notification.png',
            color: const Color(0xffb9c1d9),
          ),
          style: OutlinedButton.styleFrom(
            minimumSize: Size.zero,
            padding: const EdgeInsets.all(8),
            side: const BorderSide(
              width: 1.0,
              color: Color(0xffb9c1d9),
            ),
          ),
        )
      ],
    );
  }
}
