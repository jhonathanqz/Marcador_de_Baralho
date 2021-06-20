import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:marcador_de_truco/buraco/form/form_pontuacao/form_pontuacao.dart';
import 'package:marcador_de_truco/buraco/mobx/buraco.store.dart';
import 'package:marcador_de_truco/buraco/pages/jogo_buraco.dart';
import 'package:marcador_de_truco/buraco/widgets/alert_winner.dart';
import 'package:marcador_de_truco/injection_container.dart';

class PontuacaoBuraco extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final ijBuracoStore = sl<BuracoStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Nova pontuação'),
          centerTitle: true,
          backgroundColor: Colors.blue[700],
        ),
        body: Observer(
          builder: (_) {
            return Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          FormPontuacao(),
                          GestureDetector(
                            onTap: () {
                              if (ijBuracoStore.isFormPontuacaoValid) {
                                ijBuracoStore.finalizarPontuacao();
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => JogoBuraco()),
                                    (Route<dynamic> route) => false);
                                ijBuracoStore.time1Venceu == true ||
                                        ijBuracoStore.time2Venceu == true
                                    ? showWinner(context)
                                    // ignore: unnecessary_statements
                                    : null;
                              } else {
                                _onFailForm();
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 20, bottom: 50),
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.blue[700],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  'Finalizar pontuação',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ));
  }

  void _onFailForm() {
    // ignore: deprecated_member_use
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(
          "Existe campos em branco, verifique!",
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
      ),
    );
  }

  void showWinner(context) {
    // ignore: invalid_use_of_protected_member
    _scaffoldKey.currentState.setState(() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertWinner(),
      );
    });
  }
}
