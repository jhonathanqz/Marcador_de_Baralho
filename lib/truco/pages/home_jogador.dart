import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:marcador_de_truco/injection_container.dart';
import 'package:marcador_de_truco/truco/mobx/truco.store.dart';
import 'package:marcador_de_truco/truco/pages/jogo_truco.dart';

class HomeJogador extends StatelessWidget {

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final ij = sl<TrucoStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Marcador de Truco"),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      body: Container(
          color: Colors.grey[200],
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.all(12),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 8, bottom: 15),
                child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    "images/logo.png",
                    fit: BoxFit.fitHeight,
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
                    ij.forPlayers == true
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
                    Center(
                      child: TextField(
                        onChanged: ij.setJogador1,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.blue[700],
                          ),
                          prefixText: "Nome: ",
                          prefixStyle: TextStyle(
                              color: Colors.blue[700],
                              fontWeight: FontWeight.bold),
                          labelText: "Nome Jogador(a) 1",
                          labelStyle: TextStyle(color: Colors.blue[700]),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.blue[700])),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue[700]),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: TextField(
                        onChanged: ij.setJogador2,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.blue[700],
                          ),
                          prefixText: "Nome: ",
                          prefixStyle: TextStyle(
                              color: Colors.blue[700],
                              fontWeight: FontWeight.bold),
                          labelText: "Nome Jogador(a) 2",
                          labelStyle: TextStyle(color: Colors.blue[700]),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.blue[700])),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue[700]),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Observer(builder: (_) {
                      return ij.forPlayers == true
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: Text(
                                    'Nomes dupla 2:',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Center(
                                  child: TextField(
                                    onChanged: ij.setJogador3,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Colors.blue[700],
                                      ),
                                      prefixText: "Nome: ",
                                      prefixStyle: TextStyle(
                                          color: Colors.blue[700],
                                          fontWeight: FontWeight.bold),
                                      labelText: "Nome Jogador(a) 3",
                                      labelStyle:
                                          TextStyle(color: Colors.blue[700]),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                              color: Colors.blue[700])),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blue[700]),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: TextField(
                                    onChanged: ij.setJogador4,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Colors.blue[700],
                                      ),
                                      prefixText: "Nome: ",
                                      prefixStyle: TextStyle(
                                          color: Colors.blue[700],
                                          fontWeight: FontWeight.bold),
                                      labelText: "Nome Jogador(a) 4",
                                      labelStyle:
                                          TextStyle(color: Colors.blue[700]),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                              color: Colors.blue[700])),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blue[700]),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                )
                              ],
                            )
                          : Container();
                    }),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Observer(
                            builder: (_) {
                              return Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: FlatButton(
                              color: Colors.blue[700],
                              onPressed: () {
                                if (ij.forPlayers == true && ij.isForPlayersValid == true) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              HomeJogo()));
                                } else if(ij.isPlayersValid == true && ij.forPlayers == false){
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              HomeJogo()));
                                }else {
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
                          )
                        ),
                      ],
                    ),
                  ],
                );
              })
            ],
          )),
    );
  }

  void _onFail() {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(
          "Existe campos em branco, verifique!",
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 4),
      ),
    );
  }
}
