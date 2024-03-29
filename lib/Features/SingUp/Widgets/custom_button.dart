import 'package:flutter/material.dart';

class CustomButtons extends StatefulWidget {
  final bool isEnabled;
  final VoidCallback onPressed;
  final Widget child;
  final Color enabledColor;
  final Color disabledColor;

  const CustomButtons({
    Key? key,
    required this.isEnabled,
    required this.onPressed,
    required this.child,
    this.enabledColor = Colors.blue,
    this.disabledColor = Colors.grey,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButtons> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.isEnabled ? widget.onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.isEnabled ? widget.enabledColor : widget.disabledColor,
      ),
      child: widget.child,
    );
  }
}
