import 'dart:math';

import 'package:flutter/material.dart';

enum DiceType { d4, d6, d8, d10, d12, d20 }
enum DiceRollerState { empty, notEmpty, d20Advantage, d20Trouble }
const Map<DiceType, int> diceMaxValue = {
  DiceType.d4: 4,
  DiceType.d6: 6,
  DiceType.d8: 8,
  DiceType.d10: 10,
  DiceType.d12: 12,
  DiceType.d20: 20,
};
const Map<DiceType, String> dicePath = {
  DiceType.d4: 'd4.png',
  DiceType.d6: 'd6.png',
  DiceType.d8: 'd8.png',
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
    if (diceRollerState == DiceRollerState.d20Advantage ||
        diceRollerState == DiceRollerState.d20Trouble) {
      reset(modifier: modifier);
    }
    Dice dice = Dice(diceType);
    dice.diceRoll();
    _dices.add(dice);
    diceRollerState = DiceRollerState.notEmpty;
    _sum = _diceSum + dice.value;
  }

  void reroll() {
    if (diceRollerState != DiceRollerState.empty) {
      if (diceRollerState == DiceRollerState.d20Advantage) {
        d20WithAdvantage();
        return;
      }
      if (diceRollerState == DiceRollerState.d20Trouble) {
        d20WithTrouble();
        return;
      }
      _diceSum = 0;
      for (Dice dice in dices) {
        dice.diceRoll();
        _sum = _diceSum + dice.value;
      }
    }
  }

  void reset({int modifier = 0}) {
    _dices = [];
    _sum = 0;
    this.modifier = modifier;
    diceRollerState = DiceRollerState.empty;
  }

  void removeDice({required int index}) {
    if (diceRollerState == DiceRollerState.d20Advantage ||
        diceRollerState == DiceRollerState.d20Trouble) {
      reset(modifier: modifier);
      return;
    }
    _sum = _diceSum - dices[index].value;
    _diceSum == 0 ? diceRollerState = DiceRollerState.empty : null;
    dices.removeAt(index);
  }

  void d20WithTrouble({int modifier = 0}) {
    reset(modifier: this.modifier);
    modifier != 0 ? this.modifier = modifier : null;
    Dice dice1 = Dice(DiceType.d20);
    Dice dice2 = Dice(DiceType.d20);
    dice1.diceRoll();
    dice2.diceRoll();
    dices.add(dice1);
    dices.add(dice2);
    diceRollerState = DiceRollerState.d20Trouble;
    _diceSum = dice1.value > dice2.value ? dice2.value : dice1.value;
  }

  void d20WithAdvantage({int modifier = 0}) {
    reset(modifier: this.modifier);
    modifier != 0 ? this.modifier = modifier : null;
    Dice dice1 = Dice(DiceType.d20);
    Dice dice2 = Dice(DiceType.d20);
    dice1.diceRoll();
    dice2.diceRoll();
    dices.add(dice1);
    dices.add(dice2);
    diceRollerState = DiceRollerState.d20Advantage;
    _diceSum = dice1.value > dice2.value ? dice1.value : dice2.value;
  }
}
