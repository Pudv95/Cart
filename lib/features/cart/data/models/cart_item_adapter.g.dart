// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartItemAdapterAdapter extends TypeAdapter<CartItemAdapter> {
  @override
  final int typeId = 0;

  @override
  CartItemAdapter read(BinaryReader reader) {
    return CartItemAdapter();
  }

  @override
  void write(BinaryWriter writer, CartItemAdapter obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItemAdapterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
