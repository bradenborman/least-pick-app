import 'package:flutter/material.dart';
import 'package:least_picked/pages/leaderboard/succes_indicator_user_table.dart';

class UsersLeaderboard extends StatelessWidget {
  final String name;
  final String email;
  final int totalScore;
  final int lifetimeScore;

  UsersLeaderboard({
    this.name = 'PANDABRAWL',
    this.email = 'BRONT@EMAIL.COM',
    this.totalScore = 6,
    this.lifetimeScore = 42,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 24.0),
        const CircleAvatar(
          radius: 60.0,
          backgroundImage: NetworkImage(
              'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50'),
        ),
        const SizedBox(height: 24.0),
        Text(
          name.isNotEmpty ? name : 'User\'s Name',
          style: const TextStyle(fontSize: 24.0),
        ),
        const SizedBox(height: 8.0),
        Text(
          email.isNotEmpty ? email : 'user@example.com',
          style: const TextStyle(fontSize: 16.0),
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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total Score',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      totalScore.toString(),
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Lifetime Score',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      lifetimeScore.toString(),
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SuccessIndicatorWidget()],
        )
      ],
    );
  }
}
