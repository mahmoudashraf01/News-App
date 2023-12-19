import 'package:flutter/material.dart';
import 'package:whether_api/themes/colors.dart';
import 'package:whether_api/themes/text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: h5Bold,
            ),
            Text(
              'Cloud',
              style: h5Bold.merge(
                const TextStyle(color: orange),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: const Column(),
    );
  }
}
