import 'package:dice_app_st/DiceModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class Rolldiceapp extends StatefulWidget{
  Rolldiceapp({super.key});

  @override
  State<StatefulWidget> createState()=>Rolldicehome();

}

class Rolldicehome extends State <Rolldiceapp>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                SizedBox(height: 30),
                  Text('click To Roll\n',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        decoration: TextDecoration.none
                    ),
                  ),
                  Text( 'Sum is ${context.watch<DiceModel>().sum}\n\n\n\n ',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        decoration: TextDecoration.none

                    ),
                  ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('images/d${context.watch<DiceModel>().dice1}.svg',width:120),

                    SizedBox(width: 30),

                    SvgPicture.asset('images/d${context.watch<DiceModel>().dice2}.svg',width:120),


                    // Image.asset('images/android App.png'),
                  ],
                ),
                SizedBox(height: 80),
                ElevatedButton(
                  onPressed:  () => context.read<DiceModel>().rollDice(),
                  child:Padding(padding: EdgeInsets.all(10.0),child: Text('Roll Dice', style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold) ),
                  ),

                ),

              ],

            ),

          ),

        ),

      ),


    );
  }

}