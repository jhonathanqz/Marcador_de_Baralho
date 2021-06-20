import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:marcador_de_truco/buraco/mobx/buraco.store.dart';
import 'package:marcador_de_truco/injection_container.dart';

class FormPontuacao extends StatelessWidget {
  final ijBuracoStore = sl<BuracoStore>();
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'Pontuação Time 1',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              ijBuracoStore.bateTime1 == true ? 'Time 1 bateu?   SIM' : 'Time 1 bateu?   NÃO',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: ijBuracoStore.statusBateTime1Yes,
                activeColor: Colors.greenAccent[700],
                onChanged: ijBuracoStore.setBateuTime1Yes,
              ),
              Text(
                'Sim',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(
                width: 15,
              ),
              Checkbox(
                value: ijBuracoStore.statusBateTime1No,
                activeColor: Colors.red,
                onChanged: ijBuracoStore.setBateuTime1No,
              ),
              Text(
                'Não',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              ijBuracoStore.pegouMortoTime1 == true ? 'Time 1 pegou o morto?   SIM' : 'Time 1 pegou o morto?   NÃO',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: ijBuracoStore.statusPegouMortoTime1Yes,
                activeColor: Colors.greenAccent[700],
                onChanged: ijBuracoStore.setPegouMorto1Yes,
              ),
              Text(
                'Sim',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(
                width: 15,
              ),
              Checkbox(
                value: ijBuracoStore.statusPegouMortoTime1No,
                activeColor: Colors.red,
                onChanged: ijBuracoStore.setPegouMorto1No,
              ),
              Text(
                'Não',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Canastra limpa',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                onChanged: ijBuracoStore.setCanastraLimpaTime1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue[700],
                  ),
                  prefixText: "Pontuação: ",
                  prefixStyle: TextStyle(
                      color: Colors.blue[700], fontWeight: FontWeight.bold),
                  labelText: "Canastra limpa",
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
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Canastra suja',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                onChanged: ijBuracoStore.setCanastraSujaTime1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue[700],
                  ),
                  prefixText: "Pontuação: ",
                  prefixStyle: TextStyle(
                      color: Colors.blue[700], fontWeight: FontWeight.bold),
                  labelText: "Canastra suja",
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
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Pontuação das cartas',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                onChanged: ijBuracoStore.setPontuacaoCartasTime1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue[700],
                  ),
                  prefixText: "Pontuação: ",
                  prefixStyle: TextStyle(
                      color: Colors.blue[700], fontWeight: FontWeight.bold),
                  labelText: "Pontuação das cartas",
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
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Pontuação negativa',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                onChanged: ijBuracoStore.setPontuacaoNegativaTime1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.red[700],
                  ),
                  prefixText: "Pontuação: ",
                  prefixStyle: TextStyle(
                      color: Colors.red[700], fontWeight: FontWeight.bold),
                  labelText: "Pontuação negativa",
                  labelStyle: TextStyle(color: Colors.red[700]),
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
          //*************************************************************************************************************************** */
          //*************************************************************************************************************************** */
          
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 25, bottom: 20),
              child: Text(
                'Pontuação Time 2',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
           Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              ijBuracoStore.bateTime2 == true ? 'Time 2 bateu?   SIM' : 'Time 2 bateu?   NÃO',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: ijBuracoStore.statusBateTime2Yes,
                activeColor: Colors.greenAccent[700],
                onChanged: ijBuracoStore.setBateuTime2Yes,
              ),
              Text(
                'Sim',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(
                width: 15,
              ),
              Checkbox(
                value: ijBuracoStore.statusBateTime2No,
                activeColor: Colors.red,
                onChanged: ijBuracoStore.setBateuTime2No,
              ),
              Text(
                'Não',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              ijBuracoStore.pegouMortoTime2 == true ? 'Time 2 pegou o morto?   SIM' : 'Time 2 pegou o morto?   NÃO',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: ijBuracoStore.statusPegouMortoTime2Yes,
                activeColor: Colors.greenAccent[700],
                onChanged: ijBuracoStore.setPegouMorto2Yes,
              ),
              Text(
                'Sim',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(
                width: 15,
              ),
              Checkbox(
                value: ijBuracoStore.statusPegouMortoTime2No,
                activeColor: Colors.red,
                onChanged: ijBuracoStore.setPegouMorto2No,
              ),
              Text(
                'Não',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Canastra limpa',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                onChanged: ijBuracoStore.setCanastraLimpaTime2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue[700],
                  ),
                  prefixText: "Pontuação: ",
                  prefixStyle: TextStyle(
                      color: Colors.blue[700], fontWeight: FontWeight.bold),
                  labelText: "Canastra limpa",
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
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Canastra suja',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                onChanged: ijBuracoStore.setCanastraSujaTime2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue[700],
                  ),
                  prefixText: "Pontuação: ",
                  prefixStyle: TextStyle(
                      color: Colors.blue[700], fontWeight: FontWeight.bold),
                  labelText: "Canastra suja",
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
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Pontuação das cartas',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                onChanged: ijBuracoStore.setPontuacaoCartasTime2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue[700],
                  ),
                  prefixText: "Pontuação: ",
                  prefixStyle: TextStyle(
                      color: Colors.blue[700], fontWeight: FontWeight.bold),
                  labelText: "Pontuação das cartas",
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
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Pontuação negativa',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                onChanged: ijBuracoStore.setPontuacaoNegativaTime2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.red[700],
                  ),
                  prefixText: "Pontuação: ",
                  prefixStyle: TextStyle(
                      color: Colors.red[700], fontWeight: FontWeight.bold),
                  labelText: "Pontuação negativa",
                  labelStyle: TextStyle(color: Colors.red[700]),
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
