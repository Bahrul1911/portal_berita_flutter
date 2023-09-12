// To parse this JSON data, do
//
//     final berita = beritaFromJson(jsonString);

import 'dart:convert';


class Article {
  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    source: Source.fromJson(json["source"]),
    author: json["author"] ?? "Author tidak ada",
    title: json["title"] ?? "Title tidak ada",
    description: json["description"] ?? "Deskripsi tidak ada",
    url: json["url"] ?? "URL tidak ada",
    urlToImage: json["urlToImage"] ?? "https://www.balitbangham.go.id/po-content/po-upload/news-default.jpg",
    publishedAt: json["publishedAt"] ?? "tidak ada",
    content: json["content"] ?? "content tidak ada"
  );
}

class Source {
  Source({
    this.id,
    this.name,
  });

  String ? id;
  String ? name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
    id: json["id"],
    name: json["name"],
  );
}
