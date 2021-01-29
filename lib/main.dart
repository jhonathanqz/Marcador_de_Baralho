import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "Marcador de Truco",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  int _timeum = 0;
  int _timedois = 0;
  int _novojogo = 0;
  String _infoText = "Bom Jogo!";
  String _infoTexto = "Bom Jogo!";

  void _changeTimeum(int delta){
    setState(() {
      _timeum += delta;

      if(_timeum < 0){
        _infoText = "Começou perdendo! ???";
      } else if(_timeum < 11){
        _infoText = "Bom Jogo!";
      } else if(_timeum == 11){
        _infoText = "Mão de 11. Boa Sorte!";
      } else if(_timeum >= 12){
        _infoText = "Parabéns, vocês ganharam o Jogo!!!";
      }
      else {
        _infoText = "Parabéns, vocês ganharam o Jogo!!!";
      }

    });

  }
  void _changeTimedois(int delta){
    setState(() {
      _timedois += delta;

      if(_timedois < 0){
        _infoTexto = "Começou perdendo! ???";
      } else if(_timedois < 11){
        _infoTexto = "Bom Jogo!";
      }else if(_timedois == 11){
        _infoTexto = "Mão de 11. Boa Sorte!";
      }else if(_timedois >= 12){
        print(_timedois);
        _infoTexto = "Parabéns, vocês ganharam o Jogo!!!";

      }else {
        _infoTexto = "Parabéns, vocês ganharam o Jogo!!!";
      }

    });

  }

  void _changeNovojogo(int delta){
    setState(() {
      _infoText = "Novo Jogo!";
      _infoTexto = "Novo Jogo!";
      _timeum = 0;
      _timedois = 0;

    });

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
        Image.asset(
          "images/truco17.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
          Text(
            "by:JhonathanQz",
            style: TextStyle(
                color: Colors.yellowAccent,
                fontStyle: FontStyle.italic,
                fontSize: 15.0),
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 20.0),
                  child: Container(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {
                        _changeNovojogo(0);
                        },

                      child: Text(
                        "Novo Jogo",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            )
          ],

        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[
            Text(
              "Nós: $_timeum",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                  child: Container(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {

                        if(_timeum <=12 ) {
                          _changeTimeum(1);
                        }else {
                          _infoText = "Por favor, inicie um novo Jogo!";
                        };
                      },

                      child: Text(
                        "+1",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                  child: Container(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {
                        _changeTimeum(-1);
                      },

                      child: Text(
                        "-1",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                  child: Container(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {
                        _changeTimeum(3);
                      },

                      child: Text(
                        "Truco!",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Text(

              _infoText,
              style: TextStyle(
                  color: Colors.yellowAccent,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              "Eles: $_timedois",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                  child: Container(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {
                        _changeTimedois(1);
                      },

                      child: Text(
                        "+1",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                  child: Container(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {
                        _changeTimedois(-1);
                      },

                      child: Text(
                        "-1",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                  child: Container(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {
                        _changeTimedois(3);
                      },

                      child: Text(
                        "Truco!",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              _infoTexto,
              style: TextStyle(
                  color: Colors.yellowAccent,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            ),
          ],
        )
      ],
    );

  }
}
