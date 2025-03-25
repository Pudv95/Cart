import 'package:bloc/bloc.dart';
import 'package:cart/features/catalogue/presentation/bloc/product_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/cart_item.dart';
import '../../domain/repositories/cart_repository.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository cartRepository;

  CartBloc({required this.cartRepository}) : super(CartLoading()) {
    on<LoadCart>(_onLoadCart);
    on<AddToCart>(_onAddToCart);
    on<RemoveFromCart>(_onRemoveFromCart);
  }

  Future<void> _onLoadCart(LoadCart event, Emitter<CartState> emit) async {
    emit(CartLoading());
    try {
      final items = cartRepository.getCartItems();
      emit(CartLoaded(items: items));
    } catch (e) {
      emit(CartError("Failed to load cart"));
    }
  }

  void _onAddToCart(AddToCart event, Emitter<CartState> emit) {
    if (state is CartLoaded) {
      final List<CartItem> updatedItems = List.from((state as CartLoaded).items)
        ..add(event.item);
      cartRepository.addToCart(event.item);
      print(updatedItems);
      emit(CartLoaded(items: updatedItems));

      // Notify ProductBloc about the cart update
      event.productBloc.add(UpdateCart());
    }
  }

  void _onRemoveFromCart(RemoveFromCart event, Emitter<CartState> emit) {
    if (state is CartLoaded) {
      final List<CartItem> updatedItems = List.from(
        (state as CartLoaded).items,
      );
      final index = updatedItems.indexWhere((item) => item.id == event.item.id);
      updatedItems.removeAt(index);
      cartRepository.removeFromCart(event.item.id);
      emit(CartLoaded(items: updatedItems));

      // Notify ProductBloc about the cart update
      event.productBloc.add(UpdateCart());
    }
  }
}
