import 'package:json_annotation/json_annotation.dart';

import 'news.dart';


@JsonSerializable(explicitToJson: true)
class NewsResponse {
  List<NewsModel>? routes;
  NewsResponse(this.routes);
}