import 'package:flutter/material.dart';

class ClickButton extends StatelessWidget {
  final Color colour;
  final Function onPress;
  final String textContent;

  ClickButton({@required this.colour,@required this.onPress,@required this.textContent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            textContent,
            style: TextStyle(color: Colors.white ),
          ),
        ),
      ),
    );
  }
}