import 'package:flutter/Cupertino.dart';
import 'package:flutter/material.dart';

class HeartButton extends StatefulWidget {
  @override
  _HeartButtonState createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: _isPressed ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
      color: _isPressed ? Colors.red : null,
      onPressed: () {
        setState(() {
          _isPressed = !_isPressed;
        });
      },
    );
  }
}
