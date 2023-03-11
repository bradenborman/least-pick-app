import 'package:flutter/material.dart';
class SelectOptionWidget extends StatelessWidget {
  final int selectedOption;
  final ValueChanged<int> onOptionSelected;

  const SelectOptionWidget({
    Key? key,
    required this.selectedOption,
    required this.onOptionSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        OptionButton(
          label: 'Option 1',
          isSelected: selectedOption == 1,
          onTap: () => onOptionSelected(1),
        ),
        const SizedBox(height: 16),
        OptionButton(
          label: 'Option 2',
          isSelected: selectedOption == 2,
          onTap: () => onOptionSelected(2),
        ),
        const SizedBox(height: 16),
        OptionButton(
          label: 'Option 3',
          isSelected: selectedOption == 3,
          onTap: () => onOptionSelected(3),
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
            style: const TextStyle(
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