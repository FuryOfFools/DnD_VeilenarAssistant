import 'package:dnd_veilenar_assistant/pages/character_page/providers/rulesets.dart';
import 'package:flutter/material.dart';

///Правила создания персонажа для D&D 5e Player's Handbook
class PhBRuleset
    with ChangeNotifier
    implements
        PhBInfo,
        PhBRace,
        PhBCharacterClass,
        PhBPerson,
        PhBAtributes,
        PhBStatus,
        PhBSkills,
        PhBFeats,
        PhBEquipment,
        isEmptyInterface {
  PhBRuleset({
    this.name = '',
    this.raceName = '',
    this.allignment = '',
    this.origin = '',
    this.xp = 0,
  });
  @override
  String name;
  @override
  String raceName;
  @override
  String allignment;
  @override
  String origin;
  @override
  int xp;

  @override
  bool isEmpty() {
    if (name == '' &&
        raceName == '' &&
        allignment == '' &&
        origin == '' &&
        xp == 0) return true;
    return false;
  }
}

///Базовая информация о персонаже. Имя, происхождение, мировоззрение и опыт.
abstract class PhBInfo implements Info {
  @override
  late String name;

  @override
  late String raceName;

  @override
  late String allignment;

  @override
  late String origin;

  @override
  late int xp;
}

///Описывает все расовые особенности персонажа. Содержит список всех доступных рас.
class PhBRace implements Race {}

///Описывает все классовые особенности персонажа. Содержит список всех классов.
class PhBCharacterClass implements CharacterClass {}

///Личные качества: свойства личности, идеалы, узы и изъяны.
class PhBPerson implements Person {}

///Различные показатели персонажа: характеристики и их навыки, максимальный показатель здоровья, текущий показатель здоровья и временное здоровье, кости хитов, инициатива, скорость, стандартный показатель класса брони (без брони)
class PhBAtributes implements Atributes {}

///Эффекты и статусы персонажа.
class PhBStatus implements Status {}

///Умения, языки и владения.
class PhBSkills implements Skills {}

///Черты персонажа и их описание.
class PhBFeats implements Feats {}

///Инвентарь персонажа. Золото, контейнеры и их содержимое, надетое снаряжение и их описание.
class PhBEquipment implements Equipment {}
