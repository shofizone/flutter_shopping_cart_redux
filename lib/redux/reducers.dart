import 'package:shopping_cart_redux/models/cart_item.dart';
import 'actions.dart';

List<CartItem> cardItemsReducer(List<CartItem> items,dynamic action){
  if(action is AddItemAction){
      return addItem(items, action);
  }
  else if(action is ToggleStateItemAction){
    return toggleStateItem(items, action);
  }
  else if(action is DeleteAction){
    return deleteItemAction(items, action);
  }

  return items;
}

List<CartItem> addItem(List<CartItem> items,AddItemAction action){
  return List.from(items)..add(action.cartItem);
}

List<CartItem> toggleStateItem(List<CartItem> items,ToggleStateItemAction action){
  List<CartItem> list  = items.map((item)=>item.name  == action.cartItem.name?action.cartItem: item).toList();
  return list;
}

List<CartItem> deleteItemAction(List<CartItem> items,DeleteAction action){
  return List.from(items)..remove(action.cartItem);
}