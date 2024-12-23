import 'package:dice_app_st/RollDiceApp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'DiceModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (_) => DiceModel()),
    ],
    child: MaterialApp(
      home: Rolldiceapp(),
    )
      );
  }
}

