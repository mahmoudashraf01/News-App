import 'package:flutter/material.dart';
import 'package:whether_api/themes/text.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
    required this.message,
  });
  final String message;
  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: h3Bold,
    );
  }
}