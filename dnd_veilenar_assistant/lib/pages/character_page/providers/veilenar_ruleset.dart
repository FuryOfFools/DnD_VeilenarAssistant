import 'package:dnd_veilenar_assistant/pages/character_page/providers/rulesets.dart';
import 'package:flutter/material.dart';

///Правила создания персонажа для D&D Veilenar
class VeilenarRuleset
    with ChangeNotifier
    implements
        VeilenarInfo,
        VeilenarRace,
        VeilenarCharacterClass,
        VeilenarPerson,
        VeilenarAtributes,
        VeilenarStatus,
        VeilenarSkills,
        VeilenarFeats,
        VeilenarEquipment {}

///Базовая информация о персонаже. Имя, раса, классы и их уровни, происхождение, мировоззрение и опыт.
class VeilenarInfo implements Info {}

///Описывает все расовые особенности персонажа. Содержит список всех доступных рас.
class VeilenarRace implements Race {}

///Описывает все классовые особенности персонажа. Содержит список всех классов.
class VeilenarCharacterClass implements CharacterClass {}

///Личные качества: свойства личности, идеалы, узы и изъяны.
class VeilenarPerson implements Person {}

///Различные показатели персонажа: характеристики и их навыки, максимальный показатель здоровья, текущий показатель здоровья и временное здоровье, кости хитов, инициатива, скорость, стандартный показатель класса брони (без брони)
class VeilenarAtributes implements Atributes {}

///Эффекты и статусы персонажа.
class VeilenarStatus implements Status {}

///Умения, языки и владения.
class VeilenarSkills implements Skills {}

///Черты персонажа и их описание.
class VeilenarFeats implements Feats {}

///Инвентарь персонажа. Золото, контейнеры и их содержимое, надетое снаряжение и их описание.
class VeilenarEquipment implements Equipment {}
