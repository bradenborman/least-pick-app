import 'dart:math';

class LeaderboardData {
  static final List<Map<String, dynamic>> data = List.generate(30, (index) {
    final name = 'Player ${index + 1}';
    final score = Random().nextInt(10000);
    return {'name': name, 'score': score};
  });
}