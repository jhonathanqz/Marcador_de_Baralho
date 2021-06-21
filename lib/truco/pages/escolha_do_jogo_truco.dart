import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marcador_de_truco/escolha_marcador.dart';
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
        title: Text('Marcador de Truco'),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => EscolhaMarcador()),
                (Route<dynamic> route) => false);
          },
          icon: Icon(FontAwesomeIcons.arrowLeft),
        ),
      ),
      body: Observer(
        builder: (_) {
          return Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                child: Text(
                  'Por favor, selecione logo a baixo a quantidade de jogadores:',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
              ),
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
                          imageDirectory: 'images/2personsBlack.png',
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
                          imageDirectory: 'images/4personsBlack.png',
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
                          imageDirectory: 'images/sair1.png',
                          titleService: 'Sair do jogo',
                          subTitleService: '(Voltar a tela anterior)',
                          icon: FontAwesomeIcons.signOutAlt,
                          colorBackground: Colors.grey,
                          function: () {
                            deleteFiels();
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => EscolhaMarcador()),
                                (Route<dynamic> route) => false);
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

  void deleteFiels() {
    ij.deleteAll();
    print('todos os campos apagados com sucesso!');
  }
}
