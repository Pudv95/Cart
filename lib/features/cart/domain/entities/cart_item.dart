import 'package:equatable/equatable.dart';

class CartItem extends Equatable {
  final int id;
  final String title;
  final double price;
  final String thumbnail;
  final String brand;
  final double discountPercentage;

  const CartItem({
    required this.id,
    required this.title,
    required this.price,
    required this.thumbnail,
    required this.discountPercentage,
    required this.brand,
  });

  @override
  List<Object?> get props => [id, title, price, thumbnail, discountPercentage];
}
