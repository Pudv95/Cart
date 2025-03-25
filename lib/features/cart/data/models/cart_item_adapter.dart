import 'package:hive/hive.dart';
import '../../domain/entities/cart_item.dart';

part 'cart_item_adapter.g.dart';

@HiveType(typeId: 0) // Unique type ID for Hive
class CartItemAdapter extends TypeAdapter<CartItem> {
  @override
  final int typeId = 0; // Must match @HiveType

  @override
  CartItem read(BinaryReader reader) {
    return CartItem(
      id: reader.readInt(),
      title: reader.readString(),
      price: reader.readDouble(),
      thumbnail: reader.readString(),
      discountPercentage: reader.readDouble(),
      brand: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, CartItem obj) {
    writer.writeInt(obj.id);
    writer.writeString(obj.title);
    writer.writeDouble(obj.price);
    writer.writeString(obj.thumbnail);
    writer.writeDouble(obj.discountPercentage);
    writer.writeString(obj.brand);
  }
}
