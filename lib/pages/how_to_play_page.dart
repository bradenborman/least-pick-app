import 'package:flutter/material.dart';

class HowToPlayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How to Play'),
      ),
      body: Center(
        child: Text(
          'This is the How to Play page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
