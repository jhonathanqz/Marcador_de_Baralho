import 'package:flutter/material.dart';

class CardOptionsWidget extends StatelessWidget {
  String titleService;
  String subTitleService;
  IconData icon;
  Function function;
  Color colorBackground;

  CardOptionsWidget(
      {this.titleService,
      this.subTitleService,
      this.icon,
      this.colorBackground,
      this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        //height: 150,
        //width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colorBackground,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Icon(
                icon,
                color: Colors.black,
                size: 45,
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Text(
                titleService,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(subTitleService),
            )
          ],
        ),
      ),
    );
  }
}
