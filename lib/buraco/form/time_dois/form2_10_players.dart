import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:marcador_de_truco/buraco/mobx/buraco.store.dart';
import 'package:marcador_de_truco/injection_container.dart';

class Formu10Players extends StatelessWidget {
  final ijBuracoStore = sl<BuracoStore>();
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                onChanged: ijBuracoStore.setJogador6,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue[700],
                  ),
                  prefixText: "Nome: ",
                  prefixStyle: TextStyle(
                      color: Colors.blue[700], fontWeight: FontWeight.bold),
                  labelText: "Nome Jogador(a) 6",
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
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                onChanged: ijBuracoStore.setJogador7,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue[700],
                  ),
                  prefixText: "Nome: ",
                  prefixStyle: TextStyle(
                      color: Colors.blue[700], fontWeight: FontWeight.bold),
                  labelText: "Nome Jogador(a) 7",
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
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                onChanged: ijBuracoStore.setJogador8,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue[700],
                  ),
                  prefixText: "Nome: ",
                  prefixStyle: TextStyle(
                      color: Colors.blue[700], fontWeight: FontWeight.bold),
                  labelText: "Nome Jogador(a) 8",
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
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                onChanged: ijBuracoStore.setJogador9,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue[700],
                  ),
                  prefixText: "Nome: ",
                  prefixStyle: TextStyle(
                      color: Colors.blue[700], fontWeight: FontWeight.bold),
                  labelText: "Nome Jogador(a) 9",
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
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                onChanged: ijBuracoStore.setJogador10,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue[700],
                  ),
                  prefixText: "Nome: ",
                  prefixStyle: TextStyle(
                      color: Colors.blue[700], fontWeight: FontWeight.bold),
                  labelText: "Nome Jogador(a) 10",
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
          ),
        ],
      );
    });
  }
}
