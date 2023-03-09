import 'package:flutter/material.dart';
import 'package:least_picked/pages/select_options.dart';

class SelectTodayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Today'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SelectOptionWidget(),
      ),
    );
  }
}
