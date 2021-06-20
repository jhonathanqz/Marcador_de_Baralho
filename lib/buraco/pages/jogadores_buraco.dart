import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marcador_de_truco/buraco/form/time_dois/form2_10_players.dart';
import 'package:marcador_de_truco/buraco/form/time_dois/form2_4_players.dart';
import 'package:marcador_de_truco/buraco/form/time_dois/form2_6_players.dart';
import 'package:marcador_de_truco/buraco/form/time_dois/form2_8_players.dart';
import 'package:marcador_de_truco/buraco/form/time_um/form_10_players.dart';
import 'package:marcador_de_truco/buraco/form/time_um/form_2_players.dart';
import 'package:marcador_de_truco/buraco/form/time_um/form_4_players.dart';
import 'package:marcador_de_truco/buraco/form/time_um/form_6_players.dart';
import 'package:marcador_de_truco/buraco/form/time_um/form_8_players.dart';
import 'package:marcador_de_truco/buraco/mobx/buraco.store.dart';
import 'package:marcador_de_truco/buraco/pages/jogo_buraco.dart';
import 'package:marcador_de_truco/injection_container.dart';

class JogadoresBuraco extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final ijBuracoStore = sl<BuracoStore>();
  //final ij = sl<TrucoStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Marcador jogo Buraco"),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
        leading: IconButton(
          onPressed: () {
            ijBuracoStore.clearFieldsBuraco();
            Navigator.of(context).pop();
          },
          icon: Icon(FontAwesomeIcons.arrowLeft),
        ),
      ),
      body: Container(
          color: Colors.grey[200],
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.all(12),
          child: Observer(
            builder: (_) {
              return ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 8, bottom: 15),
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        "images/buraco.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                        child: Text(
                      "Digite logo a baixo o nome dos jogadores por favor:",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Observer(builder: (_) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ijBuracoStore.players4Buraco == true ||
                                ijBuracoStore.players6Buraco == true ||
                                ijBuracoStore.players8Buraco == true ||
                                ijBuracoStore.players10Buraco == true
                            ? Container(
                                padding: EdgeInsets.only(bottom: 15),
                                child: Text(
                                  'Nomes dupla 1:',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            : Container(),
                        ijBuracoStore.players2Buraco == true
                            ? Form2Players()
                            : Container(),
                        ijBuracoStore.players4Buraco == true
                            ? Form4Players()
                            : Container(),
                        ijBuracoStore.players6Buraco == true
                            ? Form6Players()
                            : Container(),
                        ijBuracoStore.players8Buraco == true
                            ? Form8Players()
                            : Container(),
                        ijBuracoStore.players10Buraco == true
                            ? Form10Players()
                            : Container(),
                        SizedBox(
                          height: 20,
                        ),
                        //******************************************************************************************************************************************** */
                        Observer(builder: (_) {
                          return ijBuracoStore.variosPlayers == true
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(bottom: 20),
                                      child: Text(
                                        'Nomes dupla 2:',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    ijBuracoStore.players4Buraco == true
                                        ? Formu4Players()
                                        : Container(),
                                    ijBuracoStore.players6Buraco == true
                                        ? Formu6Players()
                                        : Container(),
                                    ijBuracoStore.players8Buraco == true
                                        ? Formu8Players()
                                        : Container(),
                                    ijBuracoStore.players10Buraco == true
                                        ? Formu10Players()
                                        : Container(),
                                  ],
                                )
                              : Container();
                        }),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(child: Observer(
                              builder: (_) {
                                return Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: FlatButton(
                                    color: Colors.blue[700],
                                    onPressed: () {
                                      if (ijBuracoStore.players2Buraco ==
                                              true &&
                                          ijBuracoStore.isPlayersValid ==
                                              true) {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        JogoBuraco()));
                                      } else if (ijBuracoStore.players4Buraco ==
                                              true &&
                                          ijBuracoStore.isForPlayersValid ==
                                              true) {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        JogoBuraco()));
                                      } else if (ijBuracoStore.players6Buraco ==
                                              true &&
                                          ijBuracoStore.is6PlayersValid ==
                                              true) {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        JogoBuraco()));
                                      }
                                      else if (ijBuracoStore.players8Buraco ==
                                              true &&
                                          ijBuracoStore.is8PlayersValid ==
                                              true) {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        JogoBuraco()));
                                      }
                                      else if (ijBuracoStore.players10Buraco ==
                                              true &&
                                          ijBuracoStore.is10PlayersValid ==
                                              true) {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        JogoBuraco()));
                                      }
                                      else {
                                        _onFail();
                                      }
                                    },
                                    child: Text(
                                      "Entrar",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                );
                              },
                            )),
                          ],
                        ),
                      ],
                    );
                  })
                ],
              );
            },
          )),
    );
  }

  void _onFail() {
    // ignore: deprecated_member_use
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(
          "Existe campos em branco, verifique!",
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 8),
      ),
    );
  }
}
