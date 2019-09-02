import 'package:flutter/material.dart';
import 'package:shopping_cart_redux/models/cart_item.dart';
import 'package:shopping_cart_redux/shopping_cart.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:shopping_cart_redux/redux/reducers.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';

void main() {
  final store  = new Store<List<CartItem>>(cardItemsReducer,initialState: []);

  runApp(MyApp(store));
}

class MyApp extends StatelessWidget {
  final Store<List<CartItem>> store;

  MyApp(this.store); // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: ShoppingCart(store)
      ),
    );
  }
}

