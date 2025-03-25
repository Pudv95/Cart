import 'package:cart/features/cart/domain/entities/cart_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../domain/entities/product.dart';
import '../../data/repositories/product_repository_impl.dart';

abstract class ProductEvent {}

class LoadProducts extends ProductEvent {}
class UpdateCart extends ProductEvent {}


class ProductState {
  final List<Product> products;
  final int cartItems;
  final bool isLoading;

  ProductState({
    this.products = const [],
    this.isLoading = false,
    this.cartItems = 0,
  });

  ProductState copyWith({
    List<Product>? products,
    bool? isLoading,
    int? cartItems,
  }) {
    return ProductState(
      products: products ?? this.products,
      isLoading: isLoading ?? this.isLoading,
      cartItems: cartItems ?? this.cartItems,
    );
  }
}

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final _productRepository = ProductRepositoryImpl();

  ProductBloc() : super(ProductState()) {
    on<LoadProducts>(_onLoadProducts);
    on<UpdateCart>(_onUpdateCart);
  }

  Future<void> _onLoadProducts(LoadProducts event, Emitter<ProductState> emit) async {
    emit(state.copyWith(isLoading: true));

    final products = await _productRepository.getProducts();
    final cartItems = await _getCartItemCount();

    emit(state.copyWith(products: products, cartItems: cartItems, isLoading: false));
  }

  Future<void> _onUpdateCart(UpdateCart event, Emitter<ProductState> emit) async {
    final cartItems = await _getCartItemCount();
    emit(state.copyWith(cartItems: cartItems));
  }

  Future<int> _getCartItemCount() async {
    final box = await Hive.openBox<CartItem>('cartBox');
    return box.length;
  }
}
