import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marcador_de_truco/main.dart';

class HomeJogador extends StatelessWidget {
  static TextEditingController controllerNome1 = TextEditingController();
  static TextEditingController controllerNome2 = TextEditingController();

  final _scaffoldKey = GlobalKey<ScaffoldState>();

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
                  child: Image.asset("images/logo.png", 
                  fit: BoxFit.fitHeight,),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: TextField(
                      controller: controllerNome1,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.blue[700],
                        ),
                        prefixText: "Nome: ",
                        prefixStyle: TextStyle(
                            color: Colors.blue[700], fontWeight: FontWeight.bold),
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
                      controller: controllerNome2,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.blue[700],
                        ),
                        prefixText: "Nome: ",
                        prefixStyle: TextStyle(
                            color: Colors.blue[700], fontWeight: FontWeight.bold),
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
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: FlatButton(
                        color: Colors.blue[700],
                      
                        onPressed: () {
                          if (controllerNome1.text != '' &&
                              controllerNome2.text != '') {
                            Home.jogador1 = controllerNome1;
                            Home.jogador2 = controllerNome2;
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) => Home()));
                          } else {
                            _onFail();
                          }
                        },
                        child: Text(
                          "Entrar",
                          style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                          ),
                      ),
                    ],
                  ),
                ],
              ),
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
        duration: Duration(seconds: 8),
      ),
    );
  }
}