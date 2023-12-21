import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:whether_api/services/news_service.dart';
import 'package:whether_api/views/home_view.dart';

void main() {
  NewsService(dio: Dio()).getNews();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
