import 'package:flutter/material.dart';

class SelectTodayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Today'),
      ),
      body: Center(
        child: Text(
          'This is the Select Today page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
