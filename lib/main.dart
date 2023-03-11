import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:least_picked/pages/landing_page.dart';
import 'package:least_picked/utilities/leaderboardDataUtility.dart';

/*
  Run in terminal with >>flutter run --dart-define=FLAVOR=dev
 */

Future<void> main() async {
  //Load in the properties
  String envFile = '.env.${String.fromEnvironment('FLAVOR', defaultValue: 'dev')}';
  await dotenv.load(fileName: envFile);
  LeaderboardData.sortDataByScore();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Least Picked',
      home: LandingPage(),
    );
  }
}
