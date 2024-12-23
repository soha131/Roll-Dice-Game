import 'dart:math';

import 'package:flutter/foundation.dart';

class DiceModel extends ChangeNotifier {
  int dice1=1 ;
  int dice2=1 ;
  int sum =0;

  void rollDice() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
      sum=dice1+dice2;
      notifyListeners();
  }

}