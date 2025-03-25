part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadCart extends CartEvent {}

class AddToCart extends CartEvent {
  final ProductBloc productBloc;
  final CartItem item;
  AddToCart({required this.item, required this.productBloc});

  @override
  List<Object?> get props => [item];
}

class RemoveFromCart extends CartEvent {
  final CartItem item;
  final ProductBloc productBloc;
  RemoveFromCart({required this.item, required this.productBloc});

  @override
  List<Object?> get props => [item];
}
