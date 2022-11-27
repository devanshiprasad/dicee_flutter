// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.purple,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _State();
}

class _State extends State<DicePage> {
  int leftdicenumber = 4;
  int rightdicenumber=1;

  void changediceface(){
    leftdicenumber= Random().nextInt(6)+1;
    rightdicenumber= Random().nextInt(6)+1;
  }


  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(children: <Widget>[
        Expanded(
          //flex widget used to fix ratios of the two dice.
          child: TextButton(
            onPressed: (){ setState(() {
              changediceface();

              print('diceNumber=$leftdicenumber');
              print('diceNumber=$rightdicenumber');


            });
            },
            child: Image.asset('lib/images/dice$leftdicenumber.png'),
          ),
        ),
        Expanded(
          child: TextButton(
              onPressed: (){ setState(() {
                rightdicenumber= Random().nextInt(6)+1;
                leftdicenumber= Random().nextInt(6)+1;
                print('diceNumber=$rightdicenumber');
                print('diceNumber=$leftdicenumber');

              });

              },
              child: Image.asset('lib/images/dice$rightdicenumber.png')),
        ),

          ],
        )

);

  }
}


