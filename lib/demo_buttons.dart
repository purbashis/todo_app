import 'package:flutter/material.dart';

class DemoButtons extends StatefulWidget {
  const DemoButtons({super.key});

  @override
  State<DemoButtons> createState() => _DemoButtonsState();
}

class _DemoButtonsState extends State<DemoButtons> {
  var _isUnderstood = false;
  var _showNope = false;

  @override
  Widget build(BuildContext context) {
    print('object state');
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderstood = false;
                  _showNope = true;
                });
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderstood = true;
                  _showNope = false; // Hide "nope" when "Yes" is clicked
                });
              },
              child: const Text('Yes'),
            ),
          ],
        ),
        if (_isUnderstood)
          const Text('Awesome!')
        else if (_showNope)
          const Text('Nope')
      ],
    );
  }
}
