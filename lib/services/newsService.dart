import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/news.dart';
import '../models/news_response.dart';
import '../resources/constants.dart';
import '../util/get_dio.dart';
import '../util/oAuthSecureStorage.dart';
import 'baseService.dart';

class NewsService extends BaseService {
  final Dio _dio = GetDio().get();
  final Dio _openDio = Dio(BaseOptions(
    baseUrl: BASE_URL,
  ))
    ..interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

  OAuthSecureStorage _authSecureStorage = OAuthSecureStorage();
  late final BuildContext context;

  NewsService(this.context);

  Future<NewsResponse?> getNewsList() async {
    try {
      var response = await _dio.get('/news?category');
      print(response);
      if (response.data["status"] == 200 && response.data['result'] != null) {
        List<NewsModel> routes = [];
        print(response.data['result']);
        for (var route in response.data['result']) {
          routes.add(NewsModel.fromJson(route));
        }
        return NewsResponse(routes);
      }
      return null;
    } catch (e) {
      print(e);
      await onDioError(e, context);
      return null;
    }
  }
}
