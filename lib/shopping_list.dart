import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shopping_cart_redux/models/cart_item.dart';
import 'package:shopping_cart_redux/shopping_list_item.dart';

class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<List<CartItem>, List<CartItem>>(
      converter: (store)=>store.state,
      builder: (BuildContext context, List list) {
        return ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) => ShoppingListItem(item: list[index]));
      },
    );
  }
}
