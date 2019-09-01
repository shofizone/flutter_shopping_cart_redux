import 'package:flutter/material.dart';
import 'package:shopping_cart_redux/shopping_list.dart';

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
      floatingActionButton: FloatingActionButton(onPressed: () {},child: Icon(Icons.add),),
      body: ShoppingList(),
    );
  }
}
