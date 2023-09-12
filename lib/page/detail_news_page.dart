import 'package:flutter/material.dart';
import 'package:portal_berita/model/news_item.dart';

class DetailNewsPage extends StatelessWidget {
  final Article article;
  const DetailNewsPage({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail News"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(article.urlToImage),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(article.content),
            ),
            Text(article.publishedAt)
          ],
        ),
      ),
    );
  }
}
