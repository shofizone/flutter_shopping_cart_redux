import 'package:flutter/material.dart';
import 'package:shopping_cart_redux/models/cart_item.dart';
import 'package:shopping_cart_redux/shopping_list.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:shopping_cart_redux/redux/reducers.dart';

import 'add_item_dialog.dart';

class ShoppingCart extends StatefulWidget {
  final Store<List<CartItem>> store;

  ShoppingCart(this.store);

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
      ),
      floatingActionButton: FloatingActionButton(onPressed:()=>_openAddItemDialog(context),child: Icon(Icons.add),),
      body: ShoppingList(),
    );
  }

  _openAddItemDialog(context){
    showDialog(context: context,
    builder: (BuildContext context)=> AddItemDialog(),
    );
  }
}
