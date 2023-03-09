import 'package:flutter/material.dart';
import 'package:least_picked/pages/leaderboard/users_leaderboard.dart';
import 'global_leaderboard.dart';

class LeaderboardPage extends StatefulWidget {
  @override
  _LeaderboardPageState createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  bool _showGlobalLeaderboard = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard'),
        actions: [
          IconButton(
            icon: _showGlobalLeaderboard ?  Icon(Icons.person) : Icon(Icons.public),
            onPressed: () {
              setState(() {
                _showGlobalLeaderboard = !_showGlobalLeaderboard;
              });
            },
          ),
        ],
      ),
      body: _showGlobalLeaderboard ? GlobalLeaderboard() : UsersLeaderboard(),
    );
  }
}