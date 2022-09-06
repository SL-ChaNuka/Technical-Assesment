import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as fss;

class Resources {
  static final fss.FlutterSecureStorage storage = fss.FlutterSecureStorage();
  static final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  static StreamController<String> get appbartitleStream =>
      StreamController.broadcast();

  static Future<bool?> getErrorToast(String message) async {
    EasyLoading.showError('$message');
    EasyLoading.dismiss();
  }

  static Future<bool?> getSuccessToast(String message) async {
    EasyLoading.showSuccess('$message');
    EasyLoading.dismiss();
  }
}
