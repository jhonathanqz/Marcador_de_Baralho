import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marcador_de_truco/buraco/mobx/buraco.store.dart';
import 'package:marcador_de_truco/buraco/pages/escolha_do_jogo_buraco.dart';
import 'package:marcador_de_truco/buraco/widgets/card_escolha_jogo.dart';
import 'package:marcador_de_truco/injection_container.dart';
import 'package:marcador_de_truco/truco/mobx/truco.store.dart';
import 'package:marcador_de_truco/truco/pages/escolha_do_jogo_truco.dart';

class EscolhaMarcador extends StatelessWidget {
  final ijBuracoStore = sl<BuracoStore>();
  final ijTrucoStore = sl<TrucoStore>();

  @override
  Widget build(BuildContext context) {
    ijBuracoStore.clearFieldsBuraco();
    ijTrucoStore.deleteAll();
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Escolha o marcador'),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      body: Observer(
        builder: (_) {
          return Column(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    children: <Widget>[
                      CardEscolhaJogo(
                          directoryImage: 'images/truco2.png',
                          titleService: 'Marcador',
                          subTitleService: 'Truco',
                          icon: FontAwesomeIcons.userFriends,
                          colorBackground: Colors.blue[700],
                          function: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        EscolhaDoJogoTruco()));
                          }),
                      CardEscolhaJogo(
                          directoryImage: 'images/buraco3.png',
                          titleService: 'Marcador',
                          subTitleService: 'Buraco',
                          icon: FontAwesomeIcons.users,
                          colorBackground: Colors.blue[700],
                          function: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        EscolhaDoJogoBuraco()));
                          }),
                      CardEscolhaJogo(
                          directoryImage: 'images/sair2.png',
                          titleService: 'Sair do App',
                          subTitleService: '',
                          icon: FontAwesomeIcons.signOutAlt,
                          colorBackground: Colors.grey[400],
                          function: () {
                            ijBuracoStore.clearFieldsBuraco();
                            ijTrucoStore.deleteAll();
                            SystemNavigator.pop();
                          }),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
