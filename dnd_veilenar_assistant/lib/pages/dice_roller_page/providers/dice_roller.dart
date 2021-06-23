import 'dart:math';

import 'package:flutter/cupertino.dart';

enum DiceType { d4, d6, d10, d12, d20 }
enum DiceRollerState { empty, notEmpty }
const Map<DiceType, int> diceMaxValue = {
  DiceType.d4: 4,
  DiceType.d6: 6,
  DiceType.d10: 10,
  DiceType.d12: 12,
  DiceType.d20: 20,
};
const Map<DiceType, String> dicePath = {
  DiceType.d4: 'd4.png',
  DiceType.d6: 'd6.png',
  DiceType.d10: 'd10.png',
  DiceType.d12: 'd12.png',
  DiceType.d20: 'd20.png',
};

class Dice with ChangeNotifier {
  Dice(this.diceType) : _result = diceMaxValue[diceType] ?? 0;
  final DiceType diceType;
  int _result;
  int get value => _result;
  set _value(int value) {
    _result = value;
    notifyListeners();
  }

  void diceRoll() {
    _value = Random().nextInt(diceMaxValue[diceType] ?? 0) + 1;
  }
}

class DiceRoller with ChangeNotifier {
  DiceRollerState diceRollerState;
  List<Dice> _dices;
  List<Dice> get dices => _dices;

  int _diceSum;
  int get sum => _diceSum + modifier;
  set _sum(int value) {
    _diceSum = value;
    notifyListeners();
  }

  int _diceModifier;
  int get modifier => _diceModifier;
  set modifier(int value) {
    _diceModifier = value;
    notifyListeners();
  }

  DiceRoller()
      : _dices = [],
        _diceSum = 0,
        _diceModifier = 0,
        diceRollerState = DiceRollerState.empty;

  void addDice({required DiceType diceType}) {
    Dice dice = Dice(diceType);
    dice.diceRoll();
    _dices.add(dice);
    diceRollerState = DiceRollerState.notEmpty;
    _sum = _diceSum + dice.value;
  }

  void reroll() {
    if (diceRollerState != DiceRollerState.empty) {
      _diceSum = 0;
      for (Dice dice in dices) {
        dice.diceRoll();
        _sum = _diceSum + dice.value;
      }
    }
  }

  void reset() {
    _dices = [];
    _sum = 0;
    diceRollerState = DiceRollerState.empty;
    notifyListeners();
  }

  void removeDice({required int index}) {
    _sum = _diceSum - dices[index].value;
    _diceSum == 0 ? diceRollerState = DiceRollerState.empty : null;
    dices.removeAt(index);
  }
}
