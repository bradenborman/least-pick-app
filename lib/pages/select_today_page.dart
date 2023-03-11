import 'package:flutter/material.dart';
import 'package:least_picked/pages/select_options.dart';


class SelectTodayPage extends StatefulWidget {
  const SelectTodayPage({Key? key}) : super(key: key);

  @override
  _SelectTodayPageState createState() => _SelectTodayPageState();
}

class _SelectTodayPageState extends State<SelectTodayPage> {
  int _selectedOption = 1;

  void _onOptionSelected(int option) {
    setState(() {
      _selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Today'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SelectOptionWidget(
          selectedOption: _selectedOption,
          onOptionSelected: _onOptionSelected,
        ),
      ),
    );
  }
}