import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marcador_de_truco/injection_container.dart';
import 'package:marcador_de_truco/truco/mobx/truco.store.dart';
import 'package:marcador_de_truco/truco/pages/escolha_do_jogo_truco.dart';
import 'package:marcador_de_truco/widgets/button_value.dart';

class HomeJogo extends StatefulWidget {

  @override
  _HomeJogoState createState() => _HomeJogoState();
}

class _HomeJogoState extends State<HomeJogo> {

  final ij = sl<TrucoStore>();

  void _changeTimeum(int delta) {
    setState(() {
      ij.time1 += delta;
    });
  }

  void _mensagemTime1() {
    setState(() {
      if (ij.time1 < 0) {
        ij.messageTime1 = "Começou perdendo! ???";
      } else if (ij.time1 < 11) {
        ij.messageTime1 = "Bom jogo!";
      } else if (ij.time1 == 11) {
        ij.messageTime1 = "Mão de 11. Boa Sorte!";
      } else if (ij.time1 >= 12) {
        ij.messageTime1 = "Parabéns, vocês ganharam o Jogo!!!";
        ij.messageTime2 = "Vocês perderam!";
      } else if (ij.time2 >= 12) {
        ij.messageTime1 = "Por favor, inicie um novo Jogo!";
      } else {
        ij.messageTime1 = "Parabéns, vocês ganharam o Jogo!!!";
      }
    });
  }

  void _changeTimedois(int delta) {
    setState(() {
      ij.time2 += delta;
    });
  }

  void _mensagemTime2() {
    setState(() {
      if (ij.time2 < 0) {
        ij.messageTime2 = "Começou perdendo! ???";
      } else if (ij.time2 < 11) {
        ij.messageTime2 = "Bom Jogo!";
      } else if (ij.time2 == 11) {
        ij.messageTime2 = "Mão de 11. Boa Sorte!";
      } else if (ij.time2 >= 12) {
        ij.messageTime2 = "Parabéns, vocês ganharam o Jogo!!!";
        ij.messageTime1 = "Vocês perderam!";
      } else if (ij.time1 >= 12) {
        ij.messageTime2 = "Por favor, inicie um novo jogo!";
      } else {
        ij.messageTime2 = "Parabéns, vocês ganharam o Jogo!!!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
      builder: (_) {
        return Stack(
          children: <Widget>[
            SafeArea(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    image: DecorationImage(
                        image: AssetImage(
                      "images/cartas1.png",
                    ))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(left: 20, top: 40, right: 20),
                            child: Container(
                              height: 40.0,
                              width: 150,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EscolhaDoJogoTruco()),
                                      (Route<dynamic> route) => false);
                                },
                                child: Text(
                                  "Nova Partida",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0),
                                ),
                                color: Colors.black,
                              ),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(left: 20, top: 10, right: 20),
                            child: Container(
                              height: 40.0,
                              width: 150,
                              child: RaisedButton(
                                onPressed: () {
                                  ij.novoJogo();
                                },
                                child: Text(
                                  "Novo Jogo",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0),
                                ),
                                color: Colors.black,
                              ),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(left: 20, top: 10, right: 20),
                            child: Container(
                              height: 40.0,
                              width: 150,
                              child: RaisedButton(
                                onPressed: () {
                                  ij.reverse();
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
                                          color: Colors.white,
                                          fontSize: 18.0),
                                    ),
                                  ],
                                ),
                                color: Colors.black,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ij.forPlayers == true
                    ? Container(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 5, bottom: 5),
                        margin: EdgeInsets.only(left: 20, right: 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[800],
                        ),
                        child: Center(
                          child: Text(
                            "${ij.nameJogador1} & ${ij.nameJogador2} ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      )
                    : Container(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 5, bottom: 5),
                        margin: EdgeInsets.only(left: 20, right: 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[800],
                        ),
                        child: Center(
                          child: Text(
                            '${ij.nameJogador1}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${ij.time1}",
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
                    ButtonValue(
                      title: '+1',
                      onPress: () {
                        if (ij.time1 >= 0 && ij.time1 <= 11 && ij.time2 < 12) {
                          _changeTimeum(1);
                          ij.a = 1;
                          ij.b = 0;
                          _mensagemTime1();
                        }

                        if (ij.time2 >= 12) {
                          ij.messageTime1 = "Por favor, inicie um novo Jogo!";
                        }
                      },
                    ),
                    ButtonValue(
                      title: '-1',
                      onPress: () {
                        if (ij.time1 >= 1 && ij.time1 <= 13 && ij.time2 < 12) {
                          ij.decreaseTime1();
                          ij.a = -1;
                          ij.b = 0;
                          _mensagemTime1();
                          _mensagemTime2();
                        }
                      },
                    ),
                    ButtonValue(
                      title: 'Truco!',
                      onPress: () {
                        if (ij.time1 >= 0 && ij.time1 <= 11 && ij.time2 < 12) {
                          _changeTimeum(3);
                          ij.a = 3;
                          ij.b = 0;
                          _mensagemTime1();
                        }
                      },
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    ij.messageTime1,
                    style: TextStyle(
                        color: Colors.red[800],
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ij.forPlayers == true
                    ? Container(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 5, bottom: 5),
                        margin: EdgeInsets.only(left: 20, right: 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[800],
                        ),
                        child: Center(
                          child: Text(
                            "${ij.nameJogador3} & ${ij.nameJogador4} ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      )
                    : Container(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 5, bottom: 5),
                        margin: EdgeInsets.only(left: 20, right: 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[800],
                        ),
                        child: Center(
                          child: Text(
                            '${ij.nameJogador2}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                Text(
                  "${ij.time2}",
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
                    ButtonValue(
                      title: '+1',
                      onPress: () {
                        if (ij.time2 >= 0 && ij.time2 <= 11 && ij.time1 < 12) {
                          _changeTimedois(1);
                          ij.a = 0;
                          ij.b = 1;

                          _mensagemTime2();
                        }
                      },
                    ),
                    ButtonValue(
                      title: '-1',
                      onPress: () {
                        if (ij.time2 >= 1 && ij.time2 <= 13 && ij.time1 < 12) {
                          _changeTimedois(-1);
                          ij.a = 0;
                          ij.b = -1;
                          _mensagemTime1();
                          _mensagemTime2();
                        }
                      },
                    ),
                    ButtonValue(
                      title: 'Truco!',
                      onPress: () {
                        if (ij.time2 >= 0 && ij.time2 <= 11 && ij.time1 < 12) {
                          _changeTimedois(3);
                          ij.a = 0;
                          ij.b = 3;

                          _mensagemTime2();
                        }
                      },
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text(
                    ij.messageTime2,
                    style: TextStyle(
                        color: Colors.red[700],
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    ),
    );
  }
}
