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
              Text(
                'Welcome back',
                style: TextStyle(
                  color: Color(0xff575b66),
                ),
              ),
              Text(
                'Karlis Berzins',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        OutlinedButton(
          onPressed: () {
            print('Notifications pressed');
          },
          child: Image.asset(
            'asset/images/notification.png',
            color: const Color(0xffb9c1d9),
          ),
          style: OutlinedButton.styleFrom(
            splashFactory: NoSplash.splashFactory,
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
