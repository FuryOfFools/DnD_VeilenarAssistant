///Базовая информация о персонаже. Имя, происхождение, мировоззрение и опыт.
abstract class Info {
  ///Имя персонажа
  late String name;

  ///Происхождение персонажа
  late String origin;

  ///Название расы персонажа
  late String raceName;

  ///Мировоззрение персонажа
  late String allignment;

  ///Опыт персонажа
  late int xp;
}

///Описывает все расовые особенности персонажа. Содержит список всех доступных рас.
abstract class Race {}

///Описывает все классовые особенности персонажа. Содержит список всех классов.
abstract class CharacterClass {}

///Личные качества: свойства личности, идеалы, узы и изъяны.
abstract class Person {}

///Различные показатели персонажа: характеристики и их навыки, максимальный показатель здоровья, текущий показатель здоровья и временное здоровье, кости хитов, инициатива, скорость, стандартный показатель класса брони (без брони)
abstract class Atributes {}

///Эффекты и статусы персонажа.
abstract class Status {}

///Умения, языки и владения.
abstract class Skills {}

///Черты персонажа и их описание.
abstract class Feats {}

///Инвентарь персонажа. Золото, контейнеры и их содержимое, надетое снаряжение и их описание.
abstract class Equipment {}

abstract class IsEmptyInterface {
  bool isEmpty();
}

abstract class JsonInterface {
  JsonInterface();
  JsonInterface.fromMap(Map<String, dynamic> map);
  Map<String, dynamic> toMap();
}
