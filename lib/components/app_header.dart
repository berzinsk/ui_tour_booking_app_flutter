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
        TextButton(
          child: const Text('Sample'),
          onPressed: () {},
        )
      ],
    );
  }
}
