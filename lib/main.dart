import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(new MaterialApp(
      title: "Marcador de Truco",
      home: HomeJogador()));
}

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
        title: Text("Novo Jogo"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.grey[200],
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(12),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
              child: Text("Digite logo a baixo o nome dos jogadores por favor:", style: TextStyle(
                  fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.justify,)
            ),),
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
                          color: Colors.blue,
                        ),
                        prefixText: "Nome: ",
                        prefixStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        labelText: "Nome Jogador(a) 1",
                        labelStyle: TextStyle(color: Colors.blue),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.blue)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
            ),
            SizedBox(height: 15,),
            Center(
              child: TextField(
                      controller: controllerNome2,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        prefixText: "Nome: ",
                        prefixStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        labelText: "Nome Jogador(a) 2",
                        labelStyle: TextStyle(color: Colors.blue),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.blue)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: RaisedButton(
              color: Colors.blue,
              onPressed: () {
                if (controllerNome1.text != '' && controllerNome2.text != '') {
                  Home.jogador1 = controllerNome1;
                  Home.jogador2 = controllerNome2;
                  Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Home()));
                }else {
                  _onFail();
                }

                
              },
              child: Text("Entrar", style: TextStyle(
                fontSize: 16, color: Colors.black
              ),),
            )
                )
              ],    
            ),
            
          ],
        ),
          ],
        )
      ),
      
    );
  }
    void _onFail(){
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(content: Text("Existe campos em branco, verifique!", style: TextStyle(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold
      ),),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 8),
      ),
    );
  }
}



class Home extends StatefulWidget {
  static TextEditingController jogador1;
  static TextEditingController jogador2;


  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  
  String jogador1 = HomeJogador.controllerNome1.text;
  String jogador2 = HomeJogador.controllerNome2.text;
  

  int _timeum = 0;
  int _timedois = 0;
  int _novojogo = 0;
  int _a = 0;
  int _b = 0;
  String _infoText = "Bom Jogo!";
  String _infoTexto = "Bom Jogo!";

  void _changeTimeum(int delta){
    setState(() {
      _timeum += delta;

      if(_timeum < 0){
        _infoText = "Começou perdendo! ???";
      } else if(_timeum < 11){
        _infoText="Bom jogo!";
        
      } else if(_timeum == 11){
        _infoText = "Mão de 11. Boa Sorte!";
        ;
      } else if(_timeum >= 12){
        _infoText = "Parabéns, vocês ganharam o Jogo!!!";
        _infoTexto = "Vocês perderam!";

      
      }else if (_timedois >= 12) {
        _infoText = "Por favor, inicie um novo Jogo!";
      }
      else {
        _infoText = "Parabéns, vocês ganharam o Jogo!!!";
        
      }

    });

  }
  void _changeTimedois(int delta){
    setState(() {
      _timedois += delta;

      if(_timedois < 0){
        _infoTexto = "Começou perdendo! ???";
      } else if(_timedois < 11){
        _infoTexto = "Bom Jogo!";
      }else if(_timedois == 11){
        _infoTexto = "Mão de 11. Boa Sorte!";
      }else if(_timedois >= 12){
        _infoTexto = "Parabéns, vocês ganharam o Jogo!!!";
        _infoText = "Vocês perderam!";

      }else if (_timeum >= 12){
        _infoTexto = "Por favor, inicie um novo jogo!";
      }
      
      else {
        _infoTexto = "Parabéns, vocês ganharam o Jogo!!!";
      }

    });

  }

  void _changeNovojogo(int delta){
    setState(() {
      _infoText = "Novo Jogo!";
      _infoTexto = "Novo Jogo!";
      _timeum = 0;
      _timedois = 0;

    });

  }

  void _reverse() {
    setState(() {
          _timeum = _timeum - _a;
          _timedois = _timedois - _b;
          _a = (0);
          _b = (0);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Image.asset(
          "images/truco17.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
          FlatButton(
            onPressed: () {
              _reverse();
              
            },
            child: Text(
            "by:JhonathanQz",
            style: TextStyle(
                color: Colors.yellowAccent,
                fontStyle: FontStyle.italic,
                fontSize: 15.0),
          ),
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                  padding: EdgeInsets.only(left: 10, top: 35),
                  child: Expanded(
                    child: Container(
                    height: 40.0,
                    
                    child: RaisedButton(
                      onPressed: () {
                        HomeJogador.controllerNome1.text = '';
                        HomeJogador.controllerNome2.text = '';
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => HomeJogador()));
                        },

                      child: Text(
                        "Nova Partida",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 35),
                  child: Expanded(
                    child: Container(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {
                        _changeNovojogo(0);
                        _a = (0);
                        _b = (0);
                        },

                      child: Text(
                        "Novo Jogo",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                  )
                ),
                ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                
                Padding(
                  padding: EdgeInsets.only(left: 35, top: 30, right: 25),
                  child: Container(
                    color: Colors.transparent,
                    height: 40.0,
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.history), 
                      iconSize: 30,
                      onPressed: () {
                        _reverse();
                        },

                      
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ],
            )
          ],

        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[
            Text(
              "$jogador1: $_timeum",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                  child: Container(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {
                        
                          if(_timeum >= 0 && _timeum <= 11 && _timedois < 12) {
                          _changeTimeum(1);
                          _a = (1);
                          _b = (0);
                        }
                        
                        if(_timedois >= 12){
                          _infoText = "Por favor, inicie um novo Jogo!";
                        };
                      },

                      child: Text(
                        "+1",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                  child: Container(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {
                        if (_timeum >= 1 && _timeum <= 13 && _timedois < 12){
                          _changeTimeum(-1);
                          _a = (-1);
                          _b = (0);
                        }
                        
                      },

                      child: Text(
                        "-1",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                  child: Container(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {
                        if (_timeum >= 0 && _timeum <=11 && _timedois < 12) {
                        _changeTimeum(3);
                        _a = (3);
                        _b = (0);
                        }
                        
                      },

                      child: Text(
                        "Truco!",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Text(

              _infoText,
              style: TextStyle(
                  color: Colors.yellowAccent,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
                  textAlign: TextAlign.center,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              "$jogador2: $_timedois",
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                  child: Container(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {
                        if (_timedois >=0 && _timedois <=11 && _timeum < 12) {
                        _changeTimedois(1);
                        _a = (0);
                        _b = (1);
                        }
                        
                      },

                      child: Text(
                        "+1",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                  child: Container(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {
                        if (_timedois >= 1 && _timedois <= 13 && _timeum < 12) {
                        _changeTimedois(-1);
                        _a = (0);
                        _b = (-1);
                        }
                        
                      },

                      child: Text(
                        "-1",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                  child: Container(
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {
                        if (_timedois >=0 && _timedois <= 11 && _timeum < 12) {
                        _changeTimedois(3);
                        _a = (0);
                        _b = (3);
                        }
                        
                      },

                      child: Text(
                        "Truco!",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              _infoTexto,
              style: TextStyle(
                  color: Colors.yellowAccent,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
                  textAlign: TextAlign.center,
            ),
          ],
        )
      ],
    ),
    );

  }

}
