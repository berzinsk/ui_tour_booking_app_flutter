import 'package:flutter/material.dart';

import 'screens/travel_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: const Scaffold(
        backgroundColor: Color(0xff1f1f29),
        body: SafeArea(
          child: TravelDetails(),
        ),
      ),
    );
  }
}
