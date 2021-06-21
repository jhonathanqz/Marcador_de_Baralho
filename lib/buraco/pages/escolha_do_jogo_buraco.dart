import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marcador_de_truco/buraco/mobx/buraco.store.dart';
import 'package:marcador_de_truco/buraco/pages/jogadores_buraco.dart';
import 'package:marcador_de_truco/escolha_marcador.dart';
import 'package:marcador_de_truco/injection_container.dart';
import 'package:marcador_de_truco/truco/mobx/truco.store.dart';
import 'package:marcador_de_truco/widgets/card_options.dart';

class EscolhaDoJogoBuraco extends StatelessWidget {
  final ijTrucoStore = sl<TrucoStore>();
  final ijBuracoStore = sl<BuracoStore>();
  @override
  Widget build(BuildContext context) {
    deleteFields();
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Marcador de Buraco'),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
        leading: IconButton(
          onPressed: () {
            ijBuracoStore.clearFieldsBuraco();
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
                          imageDirectory: 'images/2persons.png',
                          titleService: '2 Jogadores',
                          subTitleService: '(1 x 1)',
                          icon: FontAwesomeIcons.userFriends,
                          colorBackground: Colors.blue[700],
                          function: () {
                            ijBuracoStore.clearFieldsBuraco();
                            ijBuracoStore.players2Buraco = true;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        JogadoresBuraco()));
                          }),
                      CardOptionsWidget(
                          imageDirectory: 'images/4persons.png',
                          titleService: '4 Jogadores',
                          subTitleService: '(2 x 2)',
                          icon: FontAwesomeIcons.users,
                          colorBackground: Colors.blue[700],
                          function: () {
                            ijBuracoStore.clearFieldsBuraco();
                            ijBuracoStore.players4Buraco = true;
                            ijBuracoStore.variosPlayers = true;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        JogadoresBuraco()));
                          }),
                      CardOptionsWidget(
                          imageDirectory: 'images/6persons2.png',
                          titleService: '6 Jogadores',
                          subTitleService: '(3 x 3)',
                          icon: FontAwesomeIcons.users,
                          colorBackground: Colors.blue[700],
                          function: () {
                            ijBuracoStore.clearFieldsBuraco();
                            ijBuracoStore.players6Buraco = true;
                            ijBuracoStore.variosPlayers = true;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        JogadoresBuraco()));
                          }),
                      CardOptionsWidget(
                          imageDirectory: 'images/8persons2.png',
                          titleService: '8 Jogadores',
                          subTitleService: '(4 x 4)',
                          icon: FontAwesomeIcons.users,
                          colorBackground: Colors.blue[700],
                          function: () {
                            ijBuracoStore.clearFieldsBuraco();
                            ijBuracoStore.players8Buraco = true;
                            ijBuracoStore.variosPlayers = true;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        JogadoresBuraco()));
                          }),
                      CardOptionsWidget(
                          imageDirectory: 'images/10persons.png',
                          titleService: '10 Jogadores',
                          subTitleService: '(5 x 5)',
                          icon: FontAwesomeIcons.users,
                          colorBackground: Colors.blue[700],
                          function: () {
                            ijBuracoStore.clearFieldsBuraco();
                            ijBuracoStore.players10Buraco = true;
                            ijBuracoStore.variosPlayers = true;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        JogadoresBuraco()));
                          }),
                      CardOptionsWidget(
                          imageDirectory: 'images/sair1.png',
                          titleService: 'Sair do jogo',
                          subTitleService: '(Voltar a tela anterior)',
                          icon: FontAwesomeIcons.signOutAlt,
                          colorBackground: Colors.grey,
                          function: () {
                            deleteFields();
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

  void deleteFields() {
    ijBuracoStore.clearFieldsBuraco();
    print('******todos os campos apagados com sucesso!');
  }
}
