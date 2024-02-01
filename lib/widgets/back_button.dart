
import 'package:flutter/material.dart';
import 'package:whether_api/themes/colors.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        );
  }
}