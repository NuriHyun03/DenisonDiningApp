import 'package:flutter/material.dart';

class HeartButton extends StatefulWidget {
  @override
  _HeartButtonState createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  bool _isPressed = false;
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: _isPressed ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          color: _isPressed ? Colors.red : null,
          onPressed: () {
            setState(() {
              _isPressed = !_isPressed;
              if (_isPressed) {
                _count++;
              } else {
                _count--;
              }
            });
          },
        ),
        SizedBox(width: 8),
        Text(_count.toString()),
      ],
    );
  }
}
