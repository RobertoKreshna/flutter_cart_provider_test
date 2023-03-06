import 'package:flutter/material.dart';
import 'package:provider_test/mocks/item_list.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';
import 'models/cart.dart';
import 'models/item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Item> items = mockItem().item;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Cart(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.lime),
          primaryColor: Colors.lime,
        ),
        home: HomePage(items),
      ),
    );
  }
}
