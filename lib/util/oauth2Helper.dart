library oauth_dio;

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

typedef OAuthToken OAuthTokenExtractor(Response response);
typedef Future<bool> OAuthTokenValidator(OAuthToken token);

/// Interceptor to send the bearer access token and update the access token when needed
class BearerInterceptor extends Interceptor {
  OAuth oauth;

  BearerInterceptor(this.oauth);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await oauth.fetchOrRefreshAccessToken();
    print("TOKEN  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    print(token!.accessToken);
    // ignore: unnecessary_null_comparison
    if (token != null) {
      options.headers.addAll({"X-FMS-EXT-TOKEN": "${token.accessToken}"});
      super.onRequest(options, handler);
    }
  }
}

/// Use to implement a custom grantType
abstract class OAuthGrantType {
  RequestOptions handle(RequestOptions request);
}

/// Obtain an access token using a username and password
class PasswordGrant extends OAuthGrantType {
  String? username;
  String? password;
  List<String>? scope = [];

  PasswordGrant({this.username, this.password, this.scope});

  /// Prepare Request
  @override
  RequestOptions handle(RequestOptions request) {
    request.data = {
      "_username": username,
      "_password": password,
    };
    return request;
  }
}

/// Obtain an access token using an refresh token
class RefreshTokenGrant extends OAuthGrantType {
  String? refreshToken;

  RefreshTokenGrant({this.refreshToken});

  /// Prepare Request
  @override
  RequestOptions handle(RequestOptions request) {
    request.data =
        "grant_type=refresh_token&refresh_token=$refreshToken&scope=";
    return request;
  }
}

/// Use to implement custom token storage
abstract class OAuthStorage {
  /// Read token
  Future<OAuthToken> fetch();

  Future<String> fetchUser();

  Future<String> saveUser(String username);

  /// Save Token
  Future<OAuthToken> save(OAuthToken token);

  /// Clear token
  Future<void> clear();
}

/// Save Token in Memory
class OAuthMemoryStorage extends OAuthStorage {
  OAuthToken? _token;
  String? _username;

  /// Read
  @override
  Future<OAuthToken> fetch() async {
    return _token!;
  }

  /// Save
  @override
  Future<OAuthToken> save(OAuthToken token) async {
    return _token = token;
  }

  /// Read
  @override
  Future<String> fetchUser() async {
    return _username!;
  }

  /// Save
  @override
  Future<String> saveUser(String username) async {
    return _username = username;
  }

  /// Clear
  @override
  Future<void> clear() async {
    _token = null;
    _username = null;
  }
}

/// Token
class OAuthToken {
  String? accessToken;
  bool status;
  String error;
  String message;

  OAuthToken(
      {this.accessToken,
      this.status = true,
      this.error = "",
      this.message = ""});
}

/// Encode String To Base64
Codec<String, String> stringToBase64 = utf8.fuse(base64);

/// OAuth Client
class OAuth {
  Dio? dio;
  String? tokenUrl;
  String? clientId;
  String? clientSecret;
  OAuthStorage? storage;
  OAuthTokenExtractor? extractor;
  OAuthTokenValidator? validator;

  OAuth(
      {this.tokenUrl,
      this.clientId,
      this.clientSecret,
      this.extractor,
      this.dio,
      this.storage,
      this.validator}) {
    dio = dio ?? Dio()
      ..interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    storage = storage ?? OAuthMemoryStorage();
    extractor = extractor ??
        (res) {
          if (res.data["status"] == 200 && res.data["result"] != null) {
            return OAuthToken(
                status: true, accessToken: res.data['result']['token']);
          }
          return OAuthToken(accessToken: "", status: false);
        };
    validator = validator ??
        (token) {
          if (token.accessToken == null) {
            print("<<<<<<<<<<<<<<<< NULL ACCESS TOKEN >>>>>>>>>>>>>>>>>>>>>>>");
            return Future.value(false);
          }
          return Future.value(true);
        };
  }

  Future<OAuthToken> requestTokenAndSave(OAuthGrantType grantType) async {
    return requestToken(grantType).then((token) {
      storage!.save(token);
      return token;
    }).catchError((onError) {
      return OAuthToken(
          status: false,
          error: getErrorMessage(onError),
          message: getErrorMessage(onError));
    });
  }

  String getErrorMessage(error) {
    switch (error.type) {
      case DioErrorType.cancel:
        return "Request is cancelled";
      case DioErrorType.connectTimeout:
        return "Connection is timedout";
      case DioErrorType.sendTimeout:
        return "Sending is timedout";
      case DioErrorType.receiveTimeout:
        return "Receiving is timedout";
      case DioErrorType.response:
        {
          switch (error.response.statusCode) {
            case 400:
              return error.response.data["message"] == null
                  ? error.response.data.toString()
                  : error.response.data["message"] == ""
                      ? "Username and Password mismatch."
                      : error.response.data["message"];
            case 500:
              return "You have encountered a server error. Please contact Us.";
            case 302:
              return "Can't find the user. Please signup.";
            case 401:
              return "Can't authenticate. Please retry or check app updates.";
            default:
              return "You have encountered an application error. Please Contact Us.";
          }
        }

      case DioErrorType.other:
        return "Please check your connectivity.";

      default:
        return "You have encountered an application error. Please Contact Us.";
    }
  }

  /// Request a new Access Token using a strategy
  Future<OAuthToken> requestToken(OAuthGrantType grantType) {
    final request = grantType.handle(RequestOptions(
        method: 'POST',
        headers: {
          "Content-Type": "application/json",
        },
        path: ''));

    Options op = Options(headers: request.headers, method: request.method);

    return dio!.request(tokenUrl!, data: request.data, options: op).then((res) {
      var token = extractor!(res);
      return token;
    });
    // .catchError((DioError onError) => OAuthToken(status: false,error: onError.response?.data["message"]));
  }

  /// return current access token or refresh
  Future<OAuthToken?> fetchOrRefreshAccessToken() async {
    OAuthToken token = await storage!.fetch();

    // ignore: unnecessary_null_comparison
    if (token == null) {
      return null;
    }

    if (await this.validator!(token)) {
      print("ACCESS TOKEN VALIDATED   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
      return token;
    }
    print("REFRESH TOKEN REQUESTED   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    return null;
  }
}
