import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/cart.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cart = context.watch<Cart>();
    var cartItems = cart.allCartItem;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Cart Page",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(cartItems[index].name),
                        trailing: Consumer<Cart>(
                            builder: (context, cart, _) => IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () {
                                  cart.remove(cartItems[index]);
                                })),
                      );
                    }),
              ),
              Container(
                child: Consumer<Cart>(
                  builder: (context, cart, _) =>
                      Text('Your total is ${cart.calculateItems()}'),
                ),
              ),
            ],
          ),
        ));
  }
}
