import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  /// Will take user to nps survey page, but only once after they hit sign in 5
  /// times
  bool _npsSurvey = true;
  bool get npsSurvey => _npsSurvey;
  set npsSurvey(bool value) {
    _npsSurvey = value;
  }

  DateTime? _timeStamp = DateTime.fromMillisecondsSinceEpoch(1744066740000);
  DateTime? get timeStamp => _timeStamp;
  set timeStamp(DateTime? value) {
    _timeStamp = value;
  }

  /// AI will give them a suggestion based on the purchase amount the added.
  String _aiAgent = '';
  String get aiAgent => _aiAgent;
  set aiAgent(String value) {
    _aiAgent = value;
  }

  double _monthlySpent = 0.0;
  double get monthlySpent => _monthlySpent;
  set monthlySpent(double value) {
    _monthlySpent = value;
  }
}
