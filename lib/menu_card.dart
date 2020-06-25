import 'dart:math';

class Food {
  String item;

  Food({this.item});
}

class MenuCard {
  int _itemNumber = 0;

  List<Food> _menuCardData = [
    Food(item: 'PAV BHAJI'), //1
    Food(item: 'FRIED RICE'),
    Food(item: 'PIZZA'),
    Food(item: 'KHEER'),
    Food(item: 'CAKE'),
    Food(item: 'MISAL PAV'),
    Food(item: 'COOKIES'),
    Food(item: 'SAMOSA'),
    Food(item: 'CHAI'),
    Food(item: 'LEAFY VEGGIES'), //10
    Food(item: 'DAL RICE'),
    Food(item: 'IDLI'),
    Food(item: 'DOSA'),
    Food(item: 'SOUP'),
    Food(item: 'MANCHURIAN'),
    Food(item: 'VADA PAV'),
  ];

//  void nextItem() {}

  String getNextItem() {
    _itemNumber = Random().nextInt(16);

    return _menuCardData[_itemNumber].item + ' !';
  }
}
