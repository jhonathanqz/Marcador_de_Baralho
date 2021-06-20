// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truco.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TrucoStore on TrucoBase, Store {
  Computed<bool> _$isPlayersValidComputed;

  @override
  bool get isPlayersValid =>
      (_$isPlayersValidComputed ??= Computed<bool>(() => super.isPlayersValid,
              name: 'TrucoBase.isPlayersValid'))
          .value;
  Computed<bool> _$isForPlayersValidComputed;

  @override
  bool get isForPlayersValid => (_$isForPlayersValidComputed ??= Computed<bool>(
          () => super.isForPlayersValid,
          name: 'TrucoBase.isForPlayersValid'))
      .value;

  final _$forPlayersAtom = Atom(name: 'TrucoBase.forPlayers');

  @override
  bool get forPlayers {
    _$forPlayersAtom.reportRead();
    return super.forPlayers;
  }

  @override
  set forPlayers(bool value) {
    _$forPlayersAtom.reportWrite(value, super.forPlayers, () {
      super.forPlayers = value;
    });
  }

  final _$messageTime1Atom = Atom(name: 'TrucoBase.messageTime1');

  @override
  String get messageTime1 {
    _$messageTime1Atom.reportRead();
    return super.messageTime1;
  }

  @override
  set messageTime1(String value) {
    _$messageTime1Atom.reportWrite(value, super.messageTime1, () {
      super.messageTime1 = value;
    });
  }

  final _$messageTime2Atom = Atom(name: 'TrucoBase.messageTime2');

  @override
  String get messageTime2 {
    _$messageTime2Atom.reportRead();
    return super.messageTime2;
  }

  @override
  set messageTime2(String value) {
    _$messageTime2Atom.reportWrite(value, super.messageTime2, () {
      super.messageTime2 = value;
    });
  }

  final _$time1Atom = Atom(name: 'TrucoBase.time1');

  @override
  int get time1 {
    _$time1Atom.reportRead();
    return super.time1;
  }

  @override
  set time1(int value) {
    _$time1Atom.reportWrite(value, super.time1, () {
      super.time1 = value;
    });
  }

  final _$time2Atom = Atom(name: 'TrucoBase.time2');

  @override
  int get time2 {
    _$time2Atom.reportRead();
    return super.time2;
  }

  @override
  set time2(int value) {
    _$time2Atom.reportWrite(value, super.time2, () {
      super.time2 = value;
    });
  }

  final _$aAtom = Atom(name: 'TrucoBase.a');

  @override
  int get a {
    _$aAtom.reportRead();
    return super.a;
  }

  @override
  set a(int value) {
    _$aAtom.reportWrite(value, super.a, () {
      super.a = value;
    });
  }

  final _$bAtom = Atom(name: 'TrucoBase.b');

  @override
  int get b {
    _$bAtom.reportRead();
    return super.b;
  }

  @override
  set b(int value) {
    _$bAtom.reportWrite(value, super.b, () {
      super.b = value;
    });
  }

  final _$nameJogador1Atom = Atom(name: 'TrucoBase.nameJogador1');

  @override
  String get nameJogador1 {
    _$nameJogador1Atom.reportRead();
    return super.nameJogador1;
  }

  @override
  set nameJogador1(String value) {
    _$nameJogador1Atom.reportWrite(value, super.nameJogador1, () {
      super.nameJogador1 = value;
    });
  }

  final _$nameJogador2Atom = Atom(name: 'TrucoBase.nameJogador2');

  @override
  String get nameJogador2 {
    _$nameJogador2Atom.reportRead();
    return super.nameJogador2;
  }

  @override
  set nameJogador2(String value) {
    _$nameJogador2Atom.reportWrite(value, super.nameJogador2, () {
      super.nameJogador2 = value;
    });
  }

  final _$nameJogador3Atom = Atom(name: 'TrucoBase.nameJogador3');

  @override
  String get nameJogador3 {
    _$nameJogador3Atom.reportRead();
    return super.nameJogador3;
  }

  @override
  set nameJogador3(String value) {
    _$nameJogador3Atom.reportWrite(value, super.nameJogador3, () {
      super.nameJogador3 = value;
    });
  }

  final _$nameJogador4Atom = Atom(name: 'TrucoBase.nameJogador4');

  @override
  String get nameJogador4 {
    _$nameJogador4Atom.reportRead();
    return super.nameJogador4;
  }

  @override
  set nameJogador4(String value) {
    _$nameJogador4Atom.reportWrite(value, super.nameJogador4, () {
      super.nameJogador4 = value;
    });
  }

  final _$TrucoBaseActionController = ActionController(name: 'TrucoBase');

  @override
  void decreaseTime1() {
    final _$actionInfo = _$TrucoBaseActionController.startAction(
        name: 'TrucoBase.decreaseTime1');
    try {
      return super.decreaseTime1();
    } finally {
      _$TrucoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreaseTime2() {
    final _$actionInfo = _$TrucoBaseActionController.startAction(
        name: 'TrucoBase.decreaseTime2');
    try {
      return super.decreaseTime2();
    } finally {
      _$TrucoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reverse() {
    final _$actionInfo =
        _$TrucoBaseActionController.startAction(name: 'TrucoBase.reverse');
    try {
      return super.reverse();
    } finally {
      _$TrucoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void novoJogo() {
    final _$actionInfo =
        _$TrucoBaseActionController.startAction(name: 'TrucoBase.novoJogo');
    try {
      return super.novoJogo();
    } finally {
      _$TrucoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setJogador1(String value) {
    final _$actionInfo =
        _$TrucoBaseActionController.startAction(name: 'TrucoBase.setJogador1');
    try {
      return super.setJogador1(value);
    } finally {
      _$TrucoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setJogador2(String value) {
    final _$actionInfo =
        _$TrucoBaseActionController.startAction(name: 'TrucoBase.setJogador2');
    try {
      return super.setJogador2(value);
    } finally {
      _$TrucoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setJogador3(String value) {
    final _$actionInfo =
        _$TrucoBaseActionController.startAction(name: 'TrucoBase.setJogador3');
    try {
      return super.setJogador3(value);
    } finally {
      _$TrucoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setJogador4(String value) {
    final _$actionInfo =
        _$TrucoBaseActionController.startAction(name: 'TrucoBase.setJogador4');
    try {
      return super.setJogador4(value);
    } finally {
      _$TrucoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteAll() {
    final _$actionInfo =
        _$TrucoBaseActionController.startAction(name: 'TrucoBase.deleteAll');
    try {
      return super.deleteAll();
    } finally {
      _$TrucoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
forPlayers: ${forPlayers},
messageTime1: ${messageTime1},
messageTime2: ${messageTime2},
time1: ${time1},
time2: ${time2},
a: ${a},
b: ${b},
nameJogador1: ${nameJogador1},
nameJogador2: ${nameJogador2},
nameJogador3: ${nameJogador3},
nameJogador4: ${nameJogador4},
isPlayersValid: ${isPlayersValid},
isForPlayersValid: ${isForPlayersValid}
    ''';
  }
}
