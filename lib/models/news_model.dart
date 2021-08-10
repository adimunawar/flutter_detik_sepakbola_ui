part of 'models.dart';

class News {
  final int id;
  final String title;
  final String content;
  final String imaUrl;
  final DateTime dateTime;
  final String country;
  final String writter;
  final String category;
  final String createdAt;

  News(this.id, this.title, this.content, this.imaUrl, this.country,
      this.dateTime, this.writter, this.category, this.createdAt);
}
