import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../resources/constants.dart';
import '../resources/resources.dart';
import 'oauth2Helper.dart';

class OAuthSecureStorage extends OAuthStorage {
  final FlutterSecureStorage storage = Resources.storage;
  final accessTokenKey = ACCESS_TOKEN_KEY;
  final userKey = USER_KEY;
  final refreshTokenKey = REFRESH_TOKEN_KEY;

  static final OAuthSecureStorage _oauthSecureStorage =
      OAuthSecureStorage._internal();

  factory OAuthSecureStorage() {
    return _oauthSecureStorage;
  }

  OAuthSecureStorage._internal();

  @override
  Future<OAuthToken> fetch() async {
    return OAuthToken(accessToken: await storage.read(key: accessTokenKey));
  }

  @override
  Future<OAuthToken> save(OAuthToken token) async {
    await storage.write(key: accessTokenKey, value: token.accessToken);
    return token;
  }

  @override
  Future<String> fetchUser() async {
    return await storage.read(key: userKey) ?? "";
  }

  @override
  Future<String> saveUser(String username) async {
    await storage.write(key: userKey, value: username);
    return username;
  }

  Future<void> clear() async {
    await storage.delete(key: accessTokenKey);
    await storage.delete(key: userKey);
  }
}
