import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marcador_de_truco/injection_container.dart';
import 'package:marcador_de_truco/truco/mobx/truco.store.dart';
import 'package:marcador_de_truco/truco/pages/home_jogador.dart';
import 'package:marcador_de_truco/widgets/card_options.dart';

class EscolhaDoJogoTruco extends StatelessWidget {
  final ij = sl<TrucoStore>();
  @override
  Widget build(BuildContext context) {
    deleteFiels();
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Escolha do jogo'),
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
                        CardOptionsWidget(
                            titleService: '2 Jogadores',
                            subTitleService: '(1 x 1)',
                            icon: FontAwesomeIcons.userFriends,
                            colorBackground: Colors.blue[700],
                            function: () {
                              ij.forPlayers = false;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          HomeJogador()));
                            }),
                        CardOptionsWidget(
                            titleService: '4 Jogadores',
                            subTitleService: '(2 x 2)',
                            icon: FontAwesomeIcons.users,
                            colorBackground: Colors.blue[700],
                            function: () {
                              ij.forPlayers = true;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          HomeJogador()));
                            }),
                        CardOptionsWidget(
                            titleService: 'Sair do jogo',
                            subTitleService: '(Sair do App)',
                            icon: FontAwesomeIcons.signOutAlt,
                            colorBackground: Colors.grey,
                            function: () {
                              deleteFiels();
                              SystemNavigator.pop();
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ));
  }

  void deleteFiels() {
    ij.deleteAll();
    print('todos os campos apagados com sucesso!');
  }
}
