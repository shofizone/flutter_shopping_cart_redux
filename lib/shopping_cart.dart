import 'package:flutter/material.dart';
import 'package:shopping_cart_redux/shopping_list.dart';

import 'add_item_dialog.dart';

class ShoppingCart extends StatefulWidget {
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
