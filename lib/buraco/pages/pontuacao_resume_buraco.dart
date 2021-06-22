import 'package:flutter/material.dart';
import 'package:marcador_de_truco/buraco/mobx/buraco.store.dart';
import 'package:marcador_de_truco/buraco/pages/jogo_buraco.dart';
import 'package:marcador_de_truco/buraco/widgets/alert_winner.dart';
import 'package:marcador_de_truco/injection_container.dart';

class PontuacaoResumeBuraco extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final ijBuracoStore = sl<BuracoStore>();
  final double spaceText = 10;
  final SizedBox space = SizedBox(
    height: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Resumo de pontos'),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 8, top: 8),
                      width: MediaQuery.of(context).size.width,
                      //height: 30,
                      color: Colors.blueGrey[800],
                      child: Center(
                        child: Text(
                          'Pontuação Time 1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            //margin: EdgeInsets.only(left: 8, right: 0, top: 0, bottom: 0),
                            //height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                              color: Colors.blue[300],
                              //borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              children: [
                                space,
                                Text(
                                  'Pontos bate:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  'Pontos morto:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  'Canastra limpa:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  'Canastra suja:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  'Pontuação da mesa:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  'Pontuação negativa:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                //Divider(),
                                Container(
                                  //padding: EdgeInsets.only(top: 5, bottom: 5),
                                  margin: EdgeInsets.only(top: 5, bottom: 10),
                                  color: Colors.black, height: 2,
                                ),
                                Text(
                                  'Total da rodada:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                space,
                                Container(
                                  //padding: EdgeInsets.only(top: 5, bottom: 5),
                                  margin: EdgeInsets.only(top: 5, bottom: 0),
                                  color: Colors.black, height: 2,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            //margin: EdgeInsets.only(left: 0, right: 8, top: 0, bottom: 0),
                            color: Colors.blue[200],
                            //height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width / 2,
                            child: Column(
                              children: [
                                space,
                                Text(
                                  ijBuracoStore.bateTime1 == true
                                      ? '+ 100 pontos'
                                      : '0',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  ijBuracoStore.pegouMortoTime1 == true
                                      ? '0   pontos'
                                      : '- 100 pontos',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  '${'+ ' + ijBuracoStore.canastraLimpaTime1} pontos',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  '${'+ ' + ijBuracoStore.canastraSujaTime1} pontos',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  '${'+ ' + ijBuracoStore.pontuacaoCartasTime1} pontos',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  '${'- ' + ijBuracoStore.pontuacaoNegativaTime1} pontos',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                //Divider(),
                                Container(
                                  //padding: EdgeInsets.only(top: 5, bottom: 5),
                                  margin: EdgeInsets.only(top: 5, bottom: 10),
                                  color: Colors.black, height: 2,
                                ),
                                Text(
                                  '${ijBuracoStore.pontosRodadaTime1} pontos',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                space,
                                Container(
                                  //padding: EdgeInsets.only(top: 5, bottom: 5),
                                  margin: EdgeInsets.only(top: 5, bottom: 0),
                                  color: Colors.black, height: 2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    //******************************************************************************************************************** */
                    // ****** resumo de pontuação do time 2 ****** //
                    //******************************************************************************************************************** */
                    Container(
                      padding: EdgeInsets.only(bottom: 8, top: 8),
                      width: MediaQuery.of(context).size.width,
                      //height: 30,
                      color: Colors.blueGrey[800],
                      child: Center(
                        child: Text(
                          'Pontuação Time 2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            //margin: EdgeInsets.only(left: 8, right: 0, top: 0, bottom: 0),
                            //height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                              color: Colors.blue[300],
                              //borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              children: [
                                space,
                                Text(
                                  'Pontos bate:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  'Pontos morto:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  'Canastra limpa:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  'Canastra suja:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  'Pontuação da mesa:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  'Pontuação negativa:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                //Divider(),
                                Container(
                                  //padding: EdgeInsets.only(top: 5, bottom: 5),
                                  margin: EdgeInsets.only(top: 5, bottom: 10),
                                  color: Colors.black, height: 2,
                                ),
                                Text(
                                  'Total da rodada:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                space,
                                Container(
                                  //padding: EdgeInsets.only(top: 5, bottom: 5),
                                  margin: EdgeInsets.only(top: 5, bottom: 0),
                                  color: Colors.black, height: 2,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            //margin: EdgeInsets.only(left: 0, right: 8, top: 0, bottom: 0),
                            color: Colors.blue[200],
                            //height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width / 2,
                            child: Column(
                              children: [
                                space,
                                Text(
                                  ijBuracoStore.bateTime2 == true
                                      ? '+ 100 pontos'
                                      : '0',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  ijBuracoStore.pegouMortoTime2 == true
                                      ? '0   pontos'
                                      : '- 100 pontos',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  '${'+ ' + ijBuracoStore.canastraLimpaTime2} pontos',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  '${'+ ' + ijBuracoStore.canastraSujaTime2} pontos',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  '${'+ ' + ijBuracoStore.pontuacaoCartasTime2} pontos',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                Divider(),
                                Text(
                                  '${'- ' + ijBuracoStore.pontuacaoNegativaTime2} pontos',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                space,
                                //Divider(),
                                Container(
                                  //padding: EdgeInsets.only(top: 5, bottom: 5),
                                  margin: EdgeInsets.only(top: 5, bottom: 10),
                                  color: Colors.black, height: 2,
                                ),
                                Text(
                                  '${ijBuracoStore.pontosRodadaTime2} pontos',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                space,
                                Container(
                                  //padding: EdgeInsets.only(top: 5, bottom: 5),
                                  margin: EdgeInsets.only(top: 5, bottom: 0),
                                  color: Colors.black, height: 2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        ijBuracoStore.finalizarPontuacao();
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => JogoBuraco()),
                            (Route<dynamic> route) => false);
                            ijBuracoStore.time1Venceu == true || ijBuracoStore.time2Venceu == true
                                   ? showWinner(context)
                                   // ignore: unnecessary_statements
                                    : null;
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.blue[700],
                        child: Center(
                          child: Text(
                            'Finalizar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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
