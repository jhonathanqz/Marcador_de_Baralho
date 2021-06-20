import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:marcador_de_truco/buraco/mobx/buraco.store.dart';
import 'package:marcador_de_truco/buraco/pages/escolha_do_jogo_buraco.dart';
import 'package:marcador_de_truco/buraco/pages/pontuacao_buraco.dart';
import 'package:marcador_de_truco/buraco/widgets/alert_nova_partida.dart';
import 'package:marcador_de_truco/buraco/widgets/alert_nova_pontuacao.dart';
import 'package:marcador_de_truco/buraco/widgets/alert_novo_jogo.dart';
import 'package:marcador_de_truco/buraco/widgets/alert_winner.dart';
import 'package:marcador_de_truco/buraco/widgets/card_time1.dart';
import 'package:marcador_de_truco/buraco/widgets/card_time2.dart';
import 'package:marcador_de_truco/injection_container.dart';

class JogoBuraco extends StatefulWidget {
  @override
  _JogoBuracoState createState() => _JogoBuracoState();
}

class _JogoBuracoState extends State<JogoBuraco> {
  final ijBuracoStore = sl<BuracoStore>();

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[200],
      body: SafeArea(child: Observer(
        builder: (_) {
          return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => showNovaPartida(context),
                      child: Container(
                        height: 45,
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            'Nova Partida',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 2,
                    height: 35,
                    color: Colors.white,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => showNovoJogo(context),
                      child: Container(
                        height: 45,
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            'Novo Jogo',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CardTime1(),
                        CardTime2(),
                        //Image.asset('images/cartas1.png')
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (ijBuracoStore.time1Venceu == false &&
                      ijBuracoStore.time2Venceu == false) {
                    showNovaPontuacao(context);
                  } else {
                    showWinner();
                  } //showWinner();
                },
                child: Container(
                  margin:
                      EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      'Nova Pontuação',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      )),
    );
  }

  void showNovoJogo(context) {
    _scaffoldKey.currentState.setState(() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertNovoJogo(
          function: () async {
            ijBuracoStore.novoJogo();
            Navigator.of(context).pop();
          },
        ),
      );
    });
  }

  void showNovaPartida(context) {
    _scaffoldKey.currentState.setState(() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertNovaPartida(
          function: () async {
            ijBuracoStore.clearFieldsBuraco();
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => EscolhaDoJogoBuraco()));
          },
        ),
      );
    });
  }

  void showNovaPontuacao(context) {
    _scaffoldKey.currentState.setState(() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertNovaPontuacao(
          function: () {
            ijBuracoStore.clearFieldsPontuacao();
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => PontuacaoBuraco()),
                (Route<dynamic> route) => false);
          },
        ),
      );
    });
  }

  void showWinner() {
    _scaffoldKey.currentState.setState(() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertWinner(),
      );
    });
  }
}
