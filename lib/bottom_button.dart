import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onPressed});

  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Container(
        child: Center(
            child: Text(
          'ANYTHING ELSE?',
          style: kBottomButtonStyle,
        )),
        margin: EdgeInsets.only(
          bottom: 10.0,
        ),
        decoration: BoxDecoration(
          color: Color(0xFFffb6b9),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.withOpacity(0.9),
              spreadRadius: 7,
              blurRadius: 10,
              offset: Offset(2, 10), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
