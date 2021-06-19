// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'truco.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TrucoStore on TrucoBase, Store {
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

  @override
  String toString() {
    return '''
messageTime1: ${messageTime1},
messageTime2: ${messageTime2}
    ''';
  }
}
