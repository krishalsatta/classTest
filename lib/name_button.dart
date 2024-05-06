import 'package:flutter/material.dart';

class NameButton extends StatefulWidget {
  final String char;

  const NameButton({super.key, required this.char});

  @override
  _NameButtonState createState() => _NameButtonState();
}

class _NameButtonState extends State<NameButton> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _isClicked = !_isClicked;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: _isClicked ? Colors.grey : Colors.red,
      ),
      child: Text(
        widget.char,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
