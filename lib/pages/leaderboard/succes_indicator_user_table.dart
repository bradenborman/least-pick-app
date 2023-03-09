import 'package:flutter/material.dart';

class SuccessIndicatorWidget extends StatelessWidget {
  final List<bool> successData = [true, true, false, true, false, false, true];
  final List<String> guessData = [    'Option 2',    'Option 3',    'Option 1',    'Option 1',    'Option 2',    'Option 3',    'Option 1'  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 300), // set max height
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            for (int i = 0; i < 7; i++)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 80, child: Text(guessData[i])), // set fixed width for guess column
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 2, 10, 2),
                    width: 80,
                    height: 24,
                    decoration: BoxDecoration(
                      color: successData[i] ? Colors.green : Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      successData[i] ? '✓' : '✗',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
