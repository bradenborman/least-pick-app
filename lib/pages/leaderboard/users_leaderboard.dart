import 'package:flutter/material.dart';

class UsersLeaderboard extends StatelessWidget {
  final String name;
  final String email;
  final int totalScore;

  UsersLeaderboard({this.name = '', this.email = '', this.totalScore = 0});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 24.0),
        CircleAvatar(
          radius: 60.0,
          backgroundImage: NetworkImage(
              'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50'),
        ),
        SizedBox(height: 24.0),
        Text(
          name.isNotEmpty ? name : 'User\'s Name',
          style: TextStyle(fontSize: 24.0),
        ),
        SizedBox(height: 8.0),
        Text(
          email.isNotEmpty ? email : 'user@example.com',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 16.0),
        Center(
          child: Container(
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
            decoration: BoxDecoration(
              border: Border.all(color: Color.alphaBlend(Colors.cyan, Colors.black)),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Score',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  totalScore.toString(),
                  style: TextStyle(fontSize: 24.0),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
