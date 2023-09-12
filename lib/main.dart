import 'package:flutter/material.dart';
import 'package:portal_berita/page/news_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsPage(title: "News App"),
    );
  }
}

