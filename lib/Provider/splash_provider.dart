import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreenState extends ChangeNotifier {
  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  void initialize() {
    Timer(Duration(seconds: 3), () {
      _isInitialized = true;
      notifyListeners();
    });
  }
}