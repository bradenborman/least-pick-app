import 'package:flutter/material.dart';
import '../../utilities/leaderboardDataUtility.dart';

class GlobalLeaderboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(2),
          1: FlexColumnWidth(1),
        },
        border: TableBorder(
          verticalInside: BorderSide(color: Colors.grey.shade300, width: 1),
          horizontalInside:
          BorderSide(color: Colors.grey.shade300, width: 1),
          top: BorderSide(color: Colors.grey.shade300, width: 1),
          bottom: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            children: [
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Player Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Score',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
          for (final row in LeaderboardData.data)
            TableRow(
              decoration: BoxDecoration(
                color: LeaderboardData.data.indexOf(row) % 2 == 0
                    ? Colors.grey[100]
                    : Colors.white,
              ),
              children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      row['name'],
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      row['score'].toString(),
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}