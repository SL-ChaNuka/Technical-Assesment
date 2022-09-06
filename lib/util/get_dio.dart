import 'package:dio/dio.dart';
import 'dio_helper.dart';

class GetDio {
  static final GetDio _oauthSecureStorage = GetDio._internal();

  factory GetDio() {
    return _oauthSecureStorage;
  }

  GetDio._internal();

  Dio get() {
    return DioHelper.getDio("clientID", "clientSecret");
  }
}
