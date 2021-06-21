import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:marcador_de_truco/buraco/mobx/buraco.store.dart';
import 'package:marcador_de_truco/injection_container.dart';

class CardTime2 extends StatelessWidget {
  final ijBuracoStore = sl<BuracoStore>();
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Container(
          margin: EdgeInsets.only(
            left: 10,
            right: 10,
            top: 10,
            bottom: 10,
          ),
          padding: EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2.5,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          //height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Time 2',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  '${ijBuracoStore.pontosTime2}',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 60,
                      fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                    height: 60, child: Image.asset(ijBuracoStore.time2Venceu == true
                        ? 'images/trofeu1.png'
                        : 'images/cartas1.png')),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: RichText(
                    text: TextSpan(
                        text: 'Integrantes: ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w900),
                        children: <TextSpan>[
                          ijBuracoStore.players2Buraco == true ?
                          TextSpan(
                            text:
                                '${ijBuracoStore.nameJogador6Buraco}',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ): TextSpan(),
                          ijBuracoStore.players4Buraco == true ?
                          TextSpan(
                            text:
                                '${ijBuracoStore.nameJogador6Buraco} ${'| ' + ijBuracoStore.nameJogador7Buraco}',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ) : TextSpan(),
                          ijBuracoStore.players6Buraco == true ?
                          TextSpan(
                            text:
                                '${ijBuracoStore.nameJogador6Buraco} ${'| ' + ijBuracoStore.nameJogador7Buraco} ${'| ' + ijBuracoStore.nameJogador8Buraco}',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ) : TextSpan(),
                          ijBuracoStore.players8Buraco == true ?
                          TextSpan(
                            text:
                                '${ijBuracoStore.nameJogador6Buraco} ${'| ' + ijBuracoStore.nameJogador7Buraco} ${'| ' + ijBuracoStore.nameJogador8Buraco} ${'| ' + ijBuracoStore.nameJogador9Buraco}',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ) : TextSpan(),
                          ijBuracoStore.players10Buraco == true ?
                          TextSpan(
                            text:
                                '${ijBuracoStore.nameJogador6Buraco} ${'| ' + ijBuracoStore.nameJogador7Buraco} ${'| ' + ijBuracoStore.nameJogador8Buraco} ${'| ' + ijBuracoStore.nameJogador9Buraco} ${'| ' + ijBuracoStore.nameJogador10Buraco}',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ) : TextSpan()
                        ]),
                  )),
            ],
          ),
        );
      },
    );
  }
}
