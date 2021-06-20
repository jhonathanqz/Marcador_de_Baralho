
import 'package:mobx/mobx.dart';
import '../../string_extension.dart';
part 'truco.store.g.dart';

class TrucoStore = TrucoBase with _$TrucoStore;

abstract class TrucoBase with Store {
  @observable
  bool forPlayers = false;

  @observable
  String messageTime1 = '';

  @observable
  String messageTime2 = '';

  @observable
  int time1 = 0;

  @observable
  int time2 = 0;

  @observable
  int a = 0;

  @observable
  int b = 0;

  @action
  void decreaseTime1() => time1 = time1 - 1;

  @action
  void decreaseTime2() => time2 = time2 - 1;

  @action
  void reverse() {
    time1 = time1 - a;
    time2 = time2 - b;
    a = 0;
    b = 0;
  }

  @action
  void novoJogo() {
    time1 = 0;
    time2 = 0;
    messageTime1 = 'Novo Jogo!';
    messageTime2 = 'Novo Jogo!';
    a = 0;
    b = 0;
  }

  @observable
  String nameJogador1 = '';

  @observable
  String nameJogador2 = '';

  @observable
  String nameJogador3 = '';

  @observable
  String nameJogador4 = '';

  @action
  void setJogador1(String value) => nameJogador1 = value.capitalizeFirstOfEach;

  @action
  void setJogador2(String value) => nameJogador2 = value.capitalizeFirstOfEach;

  @action
  void setJogador3(String value) => nameJogador3 = value.capitalizeFirstOfEach;

  @action
  void setJogador4(String value) => nameJogador4 = value.capitalizeFirstOfEach;

  @computed
  bool get isPlayersValid => nameJogador1 != '' && nameJogador2 != '';

  @computed
  bool get isForPlayersValid => nameJogador1 != '' && nameJogador2 != '' && nameJogador3 != '' && nameJogador4 != '';

  @action
  void deleteAll(){
    a = 0;
    b = 0;
    time1 = 0;
    time2 = 0;
    messageTime1 = '';
    messageTime2 = '';
    nameJogador1 = '';
    nameJogador2 = '';
    nameJogador3 = '';
    nameJogador4 = '';
    forPlayers = false;
  }
}