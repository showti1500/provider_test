import 'package:flutter/foundation.dart';

class CounterModel with ChangeNotifier{

  int _counter = 0;

  getCounter()=> _counter;

  void setCounter(int counter)=> _counter=counter;

  void increaseCounter(){
    _counter++;
    notifyListeners();
  }

  void decreaseCounter(){
    _counter--;
    notifyListeners();
  }
}