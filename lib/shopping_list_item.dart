import 'package:flutter/material.dart';

class ShoppingListItem extends StatefulWidget {
  @override
  _ShoppingListItemState createState() => _ShoppingListItemState();
}

class _ShoppingListItemState extends State<ShoppingListItem> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      child: ListTile(
        title: Text("TODO: Item"),
        leading: Checkbox(value: false,onChanged: null,),
        trailing: IconButton(icon: Icon(Icons.delete),onPressed: null,),
      ),
    );
  }
}
