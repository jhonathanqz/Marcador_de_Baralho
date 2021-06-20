import 'package:flutter/material.dart';

class ButtonValue extends StatelessWidget {
  final String title;
  final Function onPress;
  ButtonValue({this.title, this.onPress});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
        child: GestureDetector(
          onTap: onPress,
          child: Container(
            width: 90,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[800],),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
            ),
          ),
        ));
  }
}
