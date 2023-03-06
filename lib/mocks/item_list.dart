import '../models/item.dart';

class mockItem extends Item {
  static final List<Item> _items = [
    Item(name: 'Smartphone', price: 250),
    Item(name: 'T-Shirt', price: 12),
    Item(name: 'Tablet', price: 325),
    Item(name: 'Television', price: 150),
    Item(name: 'Smart Television', price: 400),
    Item(name: 'Bag', price: 30),
    Item(name: 'Tote Bag', price: 32),
    Item(name: 'Plastic Bag', price: 1),
    Item(name: 'Charging Cable', price: 15),
    Item(name: 'Pouch', price: 50),
  ];

  List<Item> get item => _items;
}
