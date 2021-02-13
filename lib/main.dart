import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marcador_de_truco/home.dart';

void main() {
  runApp(new MaterialApp(
    title: "Marcador de Truco", 
    home: HomeJogador(),
    debugShowCheckedModeBanner: false,));
}

class Home extends StatefulWidget {
  static TextEditingController jogador1;
  static TextEditingController jogador2;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String jogador1 = HomeJogador.controllerNome1.text;
  String jogador2 = HomeJogador.controllerNome2.text;

  int _timeum = 0;
  int _timedois = 0;
  int _novojogo = 0;
  int _a = 0;
  int _b = 0;
  String _infoText = "Bom Jogo!";
  String _infoTexto = "Bom Jogo!";

  void _changeTimeum(int delta) {
    setState(() {
      _timeum += delta;
    });
  }

  void _mensagemTime1() {
    setState(() {
      if (_timeum < 0) {
        _infoText = "Começou perdendo! ???";
      } else if (_timeum < 11) {
        _infoText = "Bom jogo!";
      } else if (_timeum == 11) {
        _infoText = "Mão de 11. Boa Sorte!";
        ;
      } else if (_timeum >= 12) {
        _infoText = "Parabéns, vocês ganharam o Jogo!!!";
        _infoTexto = "Vocês perderam!";
      } else if (_timedois >= 12) {
        _infoText = "Por favor, inicie um novo Jogo!";
      } else {
        _infoText = "Parabéns, vocês ganharam o Jogo!!!";
      }
    });
  }

  void _changeTimedois(int delta) {
    setState(() {
      _timedois += delta;
    });
  }

  void _mensagemTime2() {
    setState(() {
      if (_timedois < 0) {
        _infoTexto = "Começou perdendo! ???";
      } else if (_timedois < 11) {
        _infoTexto = "Bom Jogo!";
      } else if (_timedois == 11) {
        _infoTexto = "Mão de 11. Boa Sorte!";
      } else if (_timedois >= 12) {
        _infoTexto = "Parabéns, vocês ganharam o Jogo!!!";
        _infoText = "Vocês perderam!";
      } else if (_timeum >= 12) {
        _infoTexto = "Por favor, inicie um novo jogo!";
      } else {
        _infoTexto = "Parabéns, vocês ganharam o Jogo!!!";
      }
    });
  }

  void _changeNovojogo(int delta) {
    setState(() {
      _infoText = "Novo Jogo!";
      _infoTexto = "Novo Jogo!";
      _timeum = 0;
      _timedois = 0;
    });
  }

  void _reverse() {
    setState(() {
      _timeum = _timeum - _a;
      _timedois = _timedois - _b;
      _a = (0);
      _b = (0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "images/f7.jpg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 20, top: 40, right: 20),
                        child: Expanded(
                          child: Container(
                            height: 40.0,
                            width: 150,
                            child: RaisedButton(
                              onPressed: () {
                                HomeJogador.controllerNome1.text = '';
                                HomeJogador.controllerNome2.text = '';
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            HomeJogador()));
                              },
                              child: Text(
                                "Nova Partida",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              color: Colors.blue,
                            ),
                          ),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 20, top: 15, right: 20),
                        child: Expanded(
                          child: Container(
                            height: 40.0,
                            width: 150,
                            child: RaisedButton(
                              onPressed: () {
                                _changeNovojogo(0);
                                _a = (0);
                                _b = (0);
                              },
                              child: Text(
                                "Novo Jogo",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              color: Colors.blue,
                            ),
                          ),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 0, right: 25, bottom: 0),
                      child: FlatButton(
                        onPressed: () {
                          _reverse();
                          _mensagemTime1();
                          _mensagemTime2();
                        },
                        child: Text(
                          "from:JhonathanQz",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontStyle: FontStyle.italic,
                              fontSize: 15.0),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20, top: 15, right: 20),
                        child: Expanded(
                          child: Container(
                            height: 40.0,
                            width: 150,
                            child: RaisedButton(
                              onPressed: () {
                                _reverse();
                                _mensagemTime1();
                                _mensagemTime2();
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.history,
                                    color: Colors.yellowAccent,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Desfazer",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18.0),
                                  ),
                                ],
                              ),
                              color: Colors.grey[600],
                            ),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "$jogador1: ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Text(
                "$_timeum",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    decoration: TextDecoration.underline,
                  ),
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
                          if (_timeum >= 0 && _timeum <= 11 && _timedois < 12) {
                            _changeTimeum(1);
                            _a = (1);
                            _b = (0);
                            _mensagemTime1();
                          }

                          if (_timedois >= 12) {
                            _infoText = "Por favor, inicie um novo Jogo!";
                          }
                          ;
                        },
                        child: Text(
                          "+1",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
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
                          if (_timeum >= 1 && _timeum <= 13 && _timedois < 12) {
                            _changeTimeum(-1);
                            _a = (-1);
                            _b = (0);
                            _mensagemTime1();
                            _mensagemTime2();
                          }
                        },
                        child: Text(
                          "-1",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
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
                          if (_timeum >= 0 && _timeum <= 11 && _timedois < 12) {
                            _changeTimeum(3);
                            _a = (3);
                            _b = (0);
                            _mensagemTime1();
                          }
                        },
                        child: Text(
                          "Truco!",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
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
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "$jogador2: ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Text(
                "$_timedois",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 35, 
                    decoration: TextDecoration.underline,
                    ),
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
                          if (_timedois >= 0 &&
                              _timedois <= 11 &&
                              _timeum < 12) {
                            _changeTimedois(1);
                            _a = (0);
                            _b = (1);

                            _mensagemTime2();
                          }
                        },
                        child: Text(
                          "+1",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
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
                          if (_timedois >= 1 &&
                              _timedois <= 13 &&
                              _timeum < 12) {
                            _changeTimedois(-1);
                            _a = (0);
                            _b = (-1);
                            _mensagemTime1();
                            _mensagemTime2();
                          }
                        },
                        child: Text(
                          "-1",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
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
                          if (_timedois >= 0 &&
                              _timedois <= 11 &&
                              _timeum < 12) {
                            _changeTimedois(3);
                            _a = (0);
                            _b = (3);

                            _mensagemTime2();
                          }
                        },
                        child: Text(
                          "Truco!",
                          style: TextStyle(color: Colors.white, fontSize: 22.0),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Text(
                  _infoTexto,
                  style: TextStyle(
                      color: Colors.yellowAccent,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
