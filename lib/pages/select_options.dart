import 'package:flutter/material.dart';

class SelectOptionWidget extends StatefulWidget {
  @override
  _SelectOptionWidgetState createState() => _SelectOptionWidgetState();
}

class _SelectOptionWidgetState extends State<SelectOptionWidget> {
  int _selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        OptionButton(
          label: 'Option 1',
          isSelected: _selectedOption == 1,
          onTap: () {
            setState(() {
              _selectedOption = 1;
            });
          },
        ),
        SizedBox(height: 16),
        OptionButton(
          label: 'Option 2',
          isSelected: _selectedOption == 2,
          onTap: () {
            setState(() {
              _selectedOption = 2;
            });
          },
        ),
        SizedBox(height: 16),
        OptionButton(
          label: 'Option 3',
          isSelected: _selectedOption == 3,
          onTap: () {
            setState(() {
              _selectedOption = 3;
            });
          },
        ),
      ],
    );
  }
}

class OptionButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionButton({
    Key? key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}