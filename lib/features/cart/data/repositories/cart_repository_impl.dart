import 'package:hive/hive.dart';
import '../../domain/entities/cart_item.dart';
import '../../domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final Box<CartItem> _cartBox;

  // ✅ Accept an already opened box
  CartRepositoryImpl(this._cartBox);

  @override
  List<CartItem> getCartItems() => _cartBox.values.toList();

  @override
  void addToCart(CartItem item) {
    _cartBox.put(item.id, item);
  }

  @override
  void removeFromCart(int itemId) {
    _cartBox.delete(itemId);
  }
  
  @override
  int getCartCount() {
    return _cartBox.length; // Returns total number of cart items
  }
}
