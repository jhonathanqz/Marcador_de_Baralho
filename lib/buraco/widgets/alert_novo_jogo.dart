import 'package:flutter/material.dart';

class AlertNovoJogo extends StatelessWidget {
  final Function function;
  AlertNovoJogo({this.function});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 2,
      backgroundColor: Colors.grey[100],
      title: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.black38,
                  size: 35,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 50, bottom: 20),
            child: Column(
              children: [
                Center(
                    child: Icon(
                  Icons.circle,
                  color: Colors.yellow[700],
                  size: 50,
                )),
                Container(
                    padding: EdgeInsets.only(top: 30),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'Você deseja realmente começar um novo jogo?',
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 21,
                              fontWeight: FontWeight.w800),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  '\n\nApós confirmação, os pontos da partida atual serão zerados!',
                              style: TextStyle(
                                  color: Colors.grey[900],
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ]),
                    )),
              ],
            ),
          ),
        ],
      ),
      content: GestureDetector(
          onTap: function,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.yellow[700],
            ),
            child: Material(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.yellow[700],
              child: Center(
                child: Text('Novo Jogo!',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 20)),
              ),
            ),
          )),
    );
  }
}
