import 'package:flutter/material.dart';
import 'package:marcador_de_truco/escolha_marcador.dart';

import 'injection_container.dart' as di;

void main() async{
  await di.init();
  runApp(new MaterialApp(
    title: "Marcador de Baralho", 
    home: EscolhaMarcador(),
    debugShowCheckedModeBanner: false,));
}


