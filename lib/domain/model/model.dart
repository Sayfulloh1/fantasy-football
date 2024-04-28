


import 'package:flutter/material.dart';

class Player{
  final String name;
  final PlayerPosition position;
  late final Offset offset;

  Player(this.offset, {required this.name, required this.position});

}



enum PlayerPosition {
  goalKeeper,
  defender,
  midfielder,
  forward,
}
