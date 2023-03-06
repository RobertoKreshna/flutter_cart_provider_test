import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart_page.dart';
import 'models/cart.dart';
import 'models/item.dart';

class HomePage extends StatelessWidget {
  List<Item> items;

  HomePage(this.items);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Test Provider",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.data_array),
            title: Text(items[index].name),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                var cart = context.read<Cart>();
                cart.add(items[index]);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CartPage()));
        },
        label: Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
        icon: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
        ),
        backgroundColor: Colors.lime,
      ),
    );
  }
}
