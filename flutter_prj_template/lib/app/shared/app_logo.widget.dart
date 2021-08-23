import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double width;
  final double height;

  const AppLogo({required Key key, this.width = 100.0, this.height = 100.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo_bordered.png',
      fit: BoxFit.contain,
      width: width,
      height: height,
    );
  }
}
