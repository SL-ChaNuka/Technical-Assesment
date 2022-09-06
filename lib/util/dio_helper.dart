import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import '../resources/constants.dart';
import 'oAuthSecureStorage.dart';
import 'oauth2Helper.dart';

class DioHelper {
  static Dio? _dio;
  static OAuth? oauth;
  static final baseUrl = BASE_URL;

  static Dio getDio(String clientID, String clientSecret) {
    oauth = OAuth(
        tokenUrl: '',
        clientId: clientID,
        clientSecret: clientSecret,
        storage: OAuthSecureStorage(),
        validator: (OAuthToken token) {
          if (token.accessToken == null) {
            print("<<<<<<<<<<<<<<<< NULL ACCESS TOKEN >>>>>>>>>>>>>>>>>>>>>>>");
            return Future.value(false);
          }
          print(
              "IS JWT EXPIRED ???? >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
          return Future.value(true);
        });
    if (null == _dio) {
      _dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        // connectTimeout: 300000,
      ))
        ..interceptors
            .add(LogInterceptor(responseBody: true, requestBody: true))
        ..interceptors.add(BearerInterceptor(oauth!));
    }
    return _dio!;
  }
}
