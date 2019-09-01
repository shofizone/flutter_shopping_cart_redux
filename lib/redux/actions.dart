import 'package:shopping_cart_redux/models/cart_item.dart';

class AddItemAction{
  final CartItem cartItem;

  AddItemAction(this.cartItem);

}

class ToggleStateItemAction{
  final CartItem cartItem;

  ToggleStateItemAction(this.cartItem);
}
class DeleteAction{
  final CartItem cartItem;

  DeleteAction(this.cartItem);
}

