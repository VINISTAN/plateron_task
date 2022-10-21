import 'package:flutter/material.dart';

/// Create provider for apple with changenotifier

class AppleProvider with ChangeNotifier{
  int _count = 0;
  int get count=>_count;
  void increment(){
    _count++;
    notifyListeners();
  }
  void decrement(){
    _count--;
    notifyListeners();
  }
}

///create provider for mango with changenotifire

class MangoProvider with ChangeNotifier{
  int _mangocount = 0;
  int get mangocount => _mangocount;
  void increment(){
    _mangocount++;
    notifyListeners();
  }
  void decrement(){
    _mangocount--;
    notifyListeners();
  }
}