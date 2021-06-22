import 'package:flutter/material.dart';

enum RuleSetType { DnD_PhB, DnD_Veilenar, DnD_SW }

const Map<RuleSetType, String> ruleSetTitle = {
  RuleSetType.DnD_PhB: "D&D 5e Player's Handbook",
  RuleSetType.DnD_Veilenar: 'D&D 5e Вэйленар',
  RuleSetType.DnD_SW: 'D&D 5e Star Wars'
};

const Map<RuleSetType, Color> ruleSetColor = {
  RuleSetType.DnD_PhB: Colors.amberAccent,
  RuleSetType.DnD_Veilenar: Colors.deepPurpleAccent,
  RuleSetType.DnD_SW: Colors.blueAccent
};

const Map<RuleSetType, String> ruleSetRoute = {
  RuleSetType.DnD_PhB: '/phb_character',
  RuleSetType.DnD_Veilenar: '/veilenar_character',
  RuleSetType.DnD_SW: '/sw_character'
};

class RuleSet with ChangeNotifier {
  RuleSetType _ruleSet = RuleSetType.DnD_PhB;
  RuleSetType get ruleSet => _ruleSet;
  set ruleSet(RuleSetType value) {
    _ruleSet = value;
    notifyListeners();
  }
}
