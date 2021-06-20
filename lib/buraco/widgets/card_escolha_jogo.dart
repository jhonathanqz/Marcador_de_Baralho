import 'package:flutter/material.dart';

class CardEscolhaJogo extends StatelessWidget {
  final String titleService;
  final String subTitleService;
  final IconData icon;
  final Function function;
  final Color colorBackground;
  final String directoryImage;

  CardEscolhaJogo({
    this.titleService,
    this.subTitleService,
    this.icon,
    this.colorBackground,
    this.function,
    this.directoryImage,
  });

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
                height: 80,
                child: Image.asset(
                  directoryImage,
                  fit: BoxFit.contain,
                )),
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
              padding: EdgeInsets.symmetric(vertical: 0),
              child: Text(
                subTitleService,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
