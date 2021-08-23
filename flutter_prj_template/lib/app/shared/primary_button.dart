import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String labelText;
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;
  final bool disabled;
  final void Function() onPressed;

  PrimaryButton({
    required this.labelText,
    this.width = double.infinity,
    required this.height,
    this.padding = const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
    this.disabled = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: RaisedButton(
        onPressed: disabled ? null : onPressed,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Text(
          labelText,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
