import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shopping_cart_redux/models/cart_item.dart';
import 'package:shopping_cart_redux/redux/actions.dart';

class ShoppingListItem extends StatefulWidget {
  final CartItem item;

  ShoppingListItem({this.item});

  @override
  _ShoppingListItemState createState() => _ShoppingListItemState();
}

class _ShoppingListItemState extends State<ShoppingListItem> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<List<CartItem>, OnItemDeleted>(
        converter: (store)=> (item)=> store.dispatch(DeleteAction(item)),
      builder: (context, onDeleteCallBack) {
        return Dismissible(
          onDismissed: (_){
              onDeleteCallBack(widget.item);
          },
          key: Key(widget.item.name),
          child: StoreConnector<List<CartItem>, OnToggleStateAction>(
            converter: (store)=> (item)=> store.dispatch(ToggleStateItemAction(item)),
            builder: (BuildContext context, OnToggleStateAction onToggleCallback) => ListTile(
                title: Text(widget.item.name),
                leading: Checkbox(value: widget.item.checked,onChanged: (value){
                  onToggleCallback(CartItem(name: widget.item.name,checked: value));
                },),
                trailing: IconButton(icon: Icon(Icons.delete),onPressed: ()=> onDeleteCallBack(widget.item),),
              )
          ),
        );
      }
    );
  }
}


typedef OnToggleStateAction = Function(CartItem item);
typedef OnItemDeleted = Function(CartItem item);