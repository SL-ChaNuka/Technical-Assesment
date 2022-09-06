import 'package:json_annotation/json_annotation.dart';

part 'news.g.dart';

@JsonSerializable(explicitToJson: true)
class NewsModel {
  NewsModel({
    this.author,
    this.content,
    this.date,
    this.imageUrl,
    this.readMoreUrl,
  });

  String? author;
  String? content;
  String? date;
  String? imageUrl;
  String? readMoreUrl;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsModelToJson(this);
}
