import 'package:flutter/material.dart';
import 'package:shopping_cart_redux/shopping_list_item.dart';

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => ShoppingListItem());
  }
}
