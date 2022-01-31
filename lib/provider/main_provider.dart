import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class MainProvider with ChangeNotifier {
  bool _checkAnswer = false;

  bool get checkAnswer => _checkAnswer;

  set checkAnswer(bool value) {
    _checkAnswer = value;
    notifyListeners();
  }
}
