import 'dart:convert';

class Article {
  final String text;
  final String url;
  final String by;
  final int time;
  final int score;

  const Article({this.text, this.url, this.by, this.time, this.score});

  factory Article.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Article(
        text: json['text'] ?? '[null]',
        url: json['url'],
        by: json['by'],
        time: json['time'] ?? 0,
        score: json['score']);
  }
}

List<int> parseTopStories(String jsonStr) {
  final parsed = json.decode(jsonStr);
  // print('Parsed $parsed');
  final listOfIds = List<int>.from(parsed);
  // print('listOfIds $listOfIds');
  return listOfIds;
}

Article parseArticle(String jsonStr) {
  final parsed = json.decode(jsonStr);
  Article article = Article.fromJson(parsed);
  return article;
}
