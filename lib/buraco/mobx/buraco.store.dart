import 'package:mobx/mobx.dart';
import '../../string_extension.dart';
part 'buraco.store.g.dart';

class BuracoStore = BuracoBase with _$BuracoStore;

abstract class BuracoBase with Store {
  @observable
  int pontosTime1 = 0;

  @observable
  int pontosTime2 = 0;

  @observable
  bool variosPlayers = false;

  @observable
  bool players2Buraco = false;

  @observable
  bool players4Buraco = false;

  @observable
  bool players6Buraco = false;

  @observable
  bool players8Buraco = false;

  @observable
  bool players10Buraco = false;

  @observable
  String nameJogador1Buraco = '';

  @observable
  String nameJogador2Buraco = '';

  @observable
  String nameJogador3Buraco = '';

  @observable
  String nameJogador4Buraco = '';

  @observable
  String nameJogador5Buraco = '';

  @observable
  String nameJogador6Buraco = '';

  @observable
  String nameJogador7Buraco = '';

  @observable
  String nameJogador8Buraco = '';

  @observable
  String nameJogador9Buraco = '';

  @observable
  String nameJogador10Buraco = '';

  @action
  void setJogador1(String value) =>
      nameJogador1Buraco = value.capitalizeFirstOfEach.trim();

  @action
  void setJogador2(String value) =>
      nameJogador2Buraco = value.capitalizeFirstOfEach.trim();

  @action
  void setJogador3(String value) =>
      nameJogador3Buraco = value.capitalizeFirstOfEach.trim();

  @action
  void setJogador4(String value) =>
      nameJogador4Buraco = value.capitalizeFirstOfEach.trim();

  @action
  void setJogador5(String value) =>
      nameJogador5Buraco = value.capitalizeFirstOfEach.trim();

  @action
  void setJogador6(String value) =>
      nameJogador6Buraco = value.capitalizeFirstOfEach.trim();

  @action
  void setJogador7(String value) =>
      nameJogador7Buraco = value.capitalizeFirstOfEach.trim();

  @action
  void setJogador8(String value) =>
      nameJogador8Buraco = value.capitalizeFirstOfEach.trim();

  @action
  void setJogador9(String value) =>
      nameJogador9Buraco = value.capitalizeFirstOfEach.trim();

  @action
  void setJogador10(String value) =>
      nameJogador10Buraco = value.capitalizeFirstOfEach.trim();

  @computed
  bool get isPlayersValid =>
      nameJogador1Buraco.trim() != '' && nameJogador6Buraco.trim() != '';

  @computed
  bool get isForPlayersValid =>
      nameJogador1Buraco.trim() != '' &&
      nameJogador2Buraco.trim() != '' &&
      nameJogador6Buraco.trim() != '' &&
      nameJogador7Buraco.trim() != '';

  @computed
  bool get is6PlayersValid =>
      nameJogador1Buraco.trim() != '' &&
      nameJogador2Buraco.trim() != '' &&
      nameJogador3Buraco.trim() != '' &&
      nameJogador6Buraco.trim() != '' &&
      nameJogador7Buraco.trim() != '' &&
      nameJogador8Buraco.trim() != '';

  @computed
  bool get is8PlayersValid =>
      nameJogador1Buraco.trim() != '' &&
      nameJogador2Buraco.trim() != '' &&
      nameJogador3Buraco.trim() != '' &&
      nameJogador4Buraco.trim() != '' &&
      nameJogador6Buraco.trim() != '' &&
      nameJogador7Buraco.trim() != '' &&
      nameJogador8Buraco.trim() != '' &&
      nameJogador9Buraco.trim() != '';

  @computed
  bool get is10PlayersValid =>
      nameJogador1Buraco.trim() != '' &&
      nameJogador2Buraco.trim() != '' &&
      nameJogador3Buraco.trim() != '' &&
      nameJogador4Buraco.trim() != '' &&
      nameJogador5Buraco.trim() != '' &&
      nameJogador6Buraco.trim() != '' &&
      nameJogador7Buraco.trim() != '' &&
      nameJogador8Buraco.trim() != '' &&
      nameJogador9Buraco.trim() != '' &&
      nameJogador10Buraco.trim() != '';

  @action
  void clearFieldsBuraco() {
    variosPlayers = false;
    players2Buraco = false;
    players4Buraco = false;
    players6Buraco = false;
    players8Buraco = false;
    players10Buraco = false;
    nameJogador1Buraco = '';
    nameJogador2Buraco = '';
    nameJogador3Buraco = '';
    nameJogador4Buraco = '';
    nameJogador5Buraco = '';
    nameJogador6Buraco = '';
    nameJogador7Buraco = '';
    nameJogador8Buraco = '';
    nameJogador9Buraco = '';
    nameJogador10Buraco = '';
    pontosTime1 = 0;
    pontosTime2 = 0;
    canastraLimpaTime1 = '';
    canastraSujaTime1 = '';
    pontuacaoCartasTime1 = '';
    pontuacaoNegativaTime1 = '';
    canastraLimpaTime2 = '';
    canastraSujaTime2 = '';
    pontuacaoCartasTime2 = '';
    pontuacaoNegativaTime2 = '';
    bateTime1 = false;
    bateTime2 = false;
    statusBateTime1Yes = false;
    statusBateTime1No = false;
    statusBateTime2Yes = false;
    statusBateTime2No = false;
    pegouMortoTime1 = false;
    pegouMortoTime2 = false;
    statusPegouMortoTime1Yes = false;
    statusPegouMortoTime1No = false;
    statusPegouMortoTime2Yes = false;
    statusPegouMortoTime2No = false;
    pontosRodadaTime1 = 0;
    pontosRodadaTime2 = 0;
    time1Venceu = false;
    time2Venceu = false;
    print('***Limpei todos os campos do buraco');
  }

  @action
  void clearFieldsPontuacao() {
    canastraLimpaTime1 = '';
    canastraSujaTime1 = '';
    pontuacaoCartasTime1 = '';
    pontuacaoNegativaTime1 = '';
    canastraLimpaTime2 = '';
    canastraSujaTime2 = '';
    pontuacaoCartasTime2 = '';
    pontuacaoNegativaTime2 = '';
    bateTime1 = false;
    bateTime2 = false;
    statusBateTime1Yes = false;
    statusBateTime1No = false;
    statusBateTime2Yes = false;
    statusBateTime2No = false;
    pegouMortoTime1 = false;
    pegouMortoTime2 = false;
    statusPegouMortoTime1Yes = false;
    statusPegouMortoTime1No = false;
    statusPegouMortoTime2Yes = false;
    statusPegouMortoTime2No = false;
    time1Venceu = false;
    time2Venceu = false;
    pontosRodadaTime1 = 0;
    pontosRodadaTime2 = 0;
    print('**Limpei os campos da tela de nova pontuação');
  }

  @action
  void novoJogo() {
    pontosTime1 = 0;
    pontosTime2 = 0;
    time1Venceu = false;
    time2Venceu = false;
    pontosRodadaTime1 = 0;
    pontosRodadaTime2 = 0;
    print('Limpei a pontuação para novo jogo!');
  }

  @observable
  String canastraLimpaTime1 = '';

  @observable
  String canastraSujaTime1 = '';

  @observable
  String pontuacaoCartasTime1 = '';

  @observable
  String pontuacaoNegativaTime1 = '';

  @observable
  String canastraLimpaTime2 = '';

  @observable
  String canastraSujaTime2 = '';

  @observable
  String pontuacaoCartasTime2 = '';

  @observable
  String pontuacaoNegativaTime2 = '';

  @action
  void setCanastraLimpaTime1(String value) => canastraLimpaTime1 = value;

  @action
  void setCanastraSujaTime1(String value) => canastraSujaTime1 = value;

  @action
  void setPontuacaoCartasTime1(String value) => pontuacaoCartasTime1 = value;

  @action
  void setPontuacaoNegativaTime1(String value) =>
      pontuacaoNegativaTime1 = value;

  @action
  void setCanastraLimpaTime2(String value) => canastraLimpaTime2 = value;

  @action
  void setCanastraSujaTime2(String value) => canastraSujaTime2 = value;

  @action
  void setPontuacaoCartasTime2(String value) => pontuacaoCartasTime2 = value;

  @action
  void setPontuacaoNegativaTime2(String value) =>
      pontuacaoNegativaTime2 = value;

  @observable
  bool bateTime1 = false;

  @observable
  bool bateTime2 = false;

  @observable
  bool statusBateTime1Yes = false;

  @observable
  bool statusBateTime1No = false;

  @observable
  bool statusBateTime2Yes = false;

  @observable
  bool statusBateTime2No = false;

  @observable
  bool pegouMortoTime1 = false;

  @observable
  bool pegouMortoTime2 = false;

  @observable
  bool statusPegouMortoTime1Yes = false;

  @observable
  bool statusPegouMortoTime1No = false;

  @observable
  bool statusPegouMortoTime2Yes = false;

  @observable
  bool statusPegouMortoTime2No = false;

  @observable
  bool time1Venceu = false;

  @observable
  bool time2Venceu = false;

  @action
  void setBateuTime1Yes(bool value) {
    if (bateTime2 == false &&
        statusBateTime1No == false &&
        statusBateTime1Yes == false) {
      statusBateTime1Yes = value;
      bateTime1 = true;
      bateTime2 = false;
      statusBateTime1No = false;
      statusBateTime2No = true;
      statusBateTime2Yes = false;
      statusPegouMortoTime1Yes = true;
      statusPegouMortoTime1No = false;
      pegouMortoTime1 = true;
    } else if (statusBateTime1Yes == true) {
      statusBateTime1Yes = false;
      statusBateTime2No = false;
      bateTime1 = false;
      statusPegouMortoTime1Yes = false;
      pegouMortoTime1 = false;
    }
  }

  @action
  void setBateuTime1No(bool value) {
    if (bateTime2 == false &&
        statusBateTime1Yes == false &&
        statusBateTime1No == false) {
      statusBateTime1No = value;
      bateTime1 = false;
      //statusBateTime2Yes = false;
    } else if (statusBateTime1No == false && bateTime2 == true) {
      statusBateTime1No = true;
      bateTime1 = false;
    } else if (statusBateTime1No == true && bateTime2 == true) {
      statusBateTime1No = false;
      bateTime1 = false;
    } else if (statusBateTime1No == true) {
      statusBateTime1No = false;
      bateTime1 = false;
      statusBateTime2Yes = false;
    }
  }

  @action
  void setBateuTime2Yes(bool value) {
    if (bateTime1 == false &&
        statusBateTime2No == false &&
        statusBateTime2Yes == false) {
      statusBateTime2Yes = value;
      bateTime2 = true;
      bateTime1 = false;
      statusBateTime2No = false;
      statusBateTime1Yes = false;
      statusBateTime1No = true;
      statusPegouMortoTime2Yes = true;
      statusPegouMortoTime2No = false;
      pegouMortoTime2 = true;
    } else if (statusBateTime2Yes == true) {
      statusBateTime2Yes = false;
      bateTime2 = false;
      statusBateTime1No = false;
      statusPegouMortoTime2Yes = false;
      pegouMortoTime2 = false;
    }
  }

  @action
  void setBateuTime2No(bool value) {
    if (bateTime1 == false &&
        statusBateTime2Yes == false &&
        statusBateTime2No == false) {
      statusBateTime2No = value;
      bateTime2 = false;
      statusBateTime1Yes = false;
    } else if (statusBateTime2No == false && bateTime1 == true) {
      statusBateTime2No = true;
      bateTime2 = false;
    } else if (statusBateTime2No == true && bateTime1 == true) {
      statusBateTime2No = false;
      bateTime2 = false;
    } else if (statusBateTime2No == true) {
      statusBateTime2No = false;
      bateTime2 = false;
      statusBateTime1Yes = false;
    }
  }

  @action
  void setPegouMorto1Yes(bool value) {
    if (pegouMortoTime1 == false && statusPegouMortoTime1No == false) {
      statusPegouMortoTime1Yes = value;
      pegouMortoTime1 = true;
      statusPegouMortoTime1No = false;
    } else if (statusPegouMortoTime1Yes == true) {
      statusPegouMortoTime1Yes = false;
      pegouMortoTime1 = false;
    }
  }

  @action
  void setPegouMorto1No(bool value) {
    if (pegouMortoTime1 == false && statusPegouMortoTime1Yes == false) {
      statusPegouMortoTime1No = value;
      pegouMortoTime1 = false;
    } else if (statusPegouMortoTime1No == true) {
      statusPegouMortoTime1No = false;
      statusPegouMortoTime1Yes = false;
      pegouMortoTime1 = false;
    }
  }

  @action
  void setPegouMorto2Yes(bool value) {
    if (pegouMortoTime2 == false && statusPegouMortoTime2No == false) {
      statusPegouMortoTime2Yes = value;
      pegouMortoTime2 = true;
      statusPegouMortoTime2No = false;
    } else if (statusPegouMortoTime2Yes == true) {
      statusPegouMortoTime2Yes = false;
      pegouMortoTime2 = false;
    }
  }

  @action
  void setPegouMorto2No(bool value) {
    if (pegouMortoTime2 == false && statusPegouMortoTime2Yes == false) {
      statusPegouMortoTime2No = value;
      pegouMortoTime2 = false;
    } else if (statusPegouMortoTime2No == true) {
      statusPegouMortoTime2No = false;
      statusPegouMortoTime2Yes = false;
      pegouMortoTime2 = false;
    }
  }

  @computed
  bool get isFormPontuacaoValid =>
      canastraLimpaTime1 != '' &&
      canastraSujaTime1 != '' &&
      pontuacaoCartasTime1 != '' &&
      pontuacaoNegativaTime1 != '' &&
      canastraLimpaTime2 != '' &&
      canastraSujaTime2 != '' &&
      pontuacaoCartasTime2 != '' &&
      pontuacaoNegativaTime2 != '' &&
      (statusBateTime1Yes == true || statusBateTime1No == true) &&
      (statusBateTime2Yes == true || statusBateTime2No == true) &&
      (statusPegouMortoTime1Yes == true || statusPegouMortoTime1No == true) &&
      (statusPegouMortoTime2Yes == true || statusPegouMortoTime2No == true);

  @action
  void finalizarPontuacao() {
    int canastraLimpa1 = int.tryParse(canastraLimpaTime1);
    int canastraSuja1 = int.tryParse(canastraSujaTime1);
    int cartas1 = int.tryParse(pontuacaoCartasTime1);
    int negativo1 = int.tryParse(pontuacaoNegativaTime1);
    //************************************************** */
    // pontuação time 2 //
    //************************************************** */
    int canastraLimpa2 = int.tryParse(canastraLimpaTime2);
    int canastraSuja2 = int.tryParse(canastraSujaTime2);
    int cartas2 = int.tryParse(pontuacaoCartasTime2);
    int negativo2 = int.tryParse(pontuacaoNegativaTime2);
    int morto = 100;
    int bate = 100;

    if (bateTime1 == true) {
      pontosTime1 =
          (pontosTime1 + canastraLimpa1 + canastraSuja1 + cartas1 + bate) -
              (negativo1);
      if (pegouMortoTime2 == true) {
        pontosTime2 = (pontosTime2 + canastraLimpa2 + canastraSuja2 + cartas2) -
            negativo2;
      } else if (pegouMortoTime2 == false) {
        pontosTime2 = (pontosTime2 + canastraLimpa2 + canastraSuja2 + cartas2) -
            (negativo2 + morto);
      }
    } else if (bateTime2 == true &&
        bateTime1 == false &&
        pegouMortoTime1 == true) {
      pontosTime1 = (pontosTime1 + canastraLimpa1 + canastraSuja1 + cartas1) -
          (negativo1);

      pontosTime2 =
          (pontosTime2 + canastraLimpa2 + canastraSuja2 + cartas2 + bate) -
              (negativo2);
    } else if (bateTime2 == true &&
        bateTime1 == false &&
        pegouMortoTime1 == false) {
      pontosTime1 = (pontosTime1 + canastraLimpa1 + canastraSuja1 + cartas1) -
          (negativo1 + morto);

      pontosTime2 =
          (pontosTime2 + canastraLimpa2 + canastraSuja2 + cartas2 + bate) -
              (negativo2);
    } else if (bateTime1 == false && bateTime2 == false) {
      if (pegouMortoTime1 == true && pegouMortoTime2 == true) {
        pontosTime1 = (pontosTime1 + canastraLimpa1 + canastraSuja1 + cartas1) -
            (negativo1);

        pontosTime2 = (pontosTime2 + canastraLimpa2 + canastraSuja2 + cartas2) -
            (negativo2);
      } else if (pegouMortoTime1 == false && pegouMortoTime2 == true) {
        pontosTime1 = (pontosTime1 + canastraLimpa1 + canastraSuja1 + cartas1) -
            (negativo1 + morto);

        pontosTime2 = (pontosTime2 + canastraLimpa2 + canastraSuja2 + cartas2) -
            (negativo2);
      } else if (pegouMortoTime2 == false && pegouMortoTime1 == true) {
        pontosTime1 = (pontosTime1 + canastraLimpa1 + canastraSuja1 + cartas1) -
            (negativo1);

        pontosTime2 = (pontosTime2 + canastraLimpa2 + canastraSuja2 + cartas2) -
            (negativo2 + morto);
      }
    }

    if (pontosTime1 >= 3000 && pontosTime1 > pontosTime2) {
      time1Venceu = true;
      time2Venceu = false;
    } else if (pontosTime2 >= 3000 && pontosTime2 > pontosTime1) {
      time2Venceu = true;
      time1Venceu = false;
    }
  }

  @observable
  int pontosRodadaTime1 = 0;

  @observable
  int pontosRodadaTime2 = 0;

  @action
  void calcularRodada() {
    int canastraLimpa1 = int.tryParse(canastraLimpaTime1);
    int canastraSuja1 = int.tryParse(canastraSujaTime1);
    int cartas1 = int.tryParse(pontuacaoCartasTime1);
    int negativo1 = int.tryParse(pontuacaoNegativaTime1);
    int bateu1 = bateTime1 == true ? 100 : 0;
    int pegouMorto1 = pegouMortoTime1 == true ? 0 : 100;
    //************************************************** */
    // pontuação time 2 //
    //************************************************** */
    int canastraLimpa2 = int.tryParse(canastraLimpaTime2);
    int canastraSuja2 = int.tryParse(canastraSujaTime2);
    int cartas2 = int.tryParse(pontuacaoCartasTime2);
    int negativo2 = int.tryParse(pontuacaoNegativaTime2);
    int bateu2 = bateTime2 == true ? 100 : 0;
    int pegouMorto2 = pegouMortoTime2 == true ? 0 : 100;

    pontosRodadaTime1 = (canastraLimpa1 + canastraSuja1 + cartas1 + bateu1) -
        (pegouMorto1 + negativo1);
    pontosRodadaTime2 = (canastraLimpa2 + canastraSuja2 + cartas2 + bateu2) -
        (pegouMorto2 + negativo2);
  }
}
