import 'package:flutter/material.dart';
import 'package:least_picked/pages/select_today_page.dart';

import 'howtoplay/how_to_play_page.dart';
import 'leaderboard/leaderboard_page.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text("Least Picked"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SelectTodayPage()),
                );
              },
              child: Text(
                'Select Today',
                style: TextStyle(fontSize: 24),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(16),
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HowToPlayPage()),
                );
              },
              child: Text(
                'How To Play',
                style: TextStyle(fontSize: 24),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(16),
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LeaderboardPage()),
                );
              },
              child: Text(
                'Leaderboard',
                style: TextStyle(fontSize: 24),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
