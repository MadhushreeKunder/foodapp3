import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'menu_card.dart';

void main() => runApp(WhatToCook());

class WhatToCook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFbbded6), //0xFFCEF2C6
        appBar: AppBar(
          backgroundColor: Color(0xFF61c0bf), //0xFF3D9891
          title: Text(
            'What to cook?',
            style: kAppBarText,
          ),
        ),
        body: Dish(),
      ),
    );
  }
}

MenuCard menuCard = MenuCard();

class Dish extends StatefulWidget {
  @override
  _DishState createState() => _DishState();
}

class _DishState extends State<Dish> {
//  int itemNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Container(
            child: Center(
              child: Text(
                menuCard.getNextItem(),
                style: kFoodName,
              ),
            ),
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFFfae3d9),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        Expanded(
          child: BottomButton(
            onPressed: () {
              setState(
                () {},
              );
            },
          ),
        ),
      ],
    );
  }
}
