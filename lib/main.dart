import 'dart:developer';

import 'package:cart/features/cart/data/models/cart_item_adapter.dart';
import 'package:cart/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:cart/features/cart/domain/entities/cart_item.dart';
import 'package:cart/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'features/catalogue/presentation/bloc/product_bloc.dart';
import 'routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(CartItemAdapter());
  final cartBox = await Hive.openBox<CartItem>('cartBox'); // ✅ Open Hive box
  final cartRepository = CartRepositoryImpl(cartBox);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ProductBloc()..add(LoadProducts())),
        BlocProvider(
          create:
              (context) =>
                  CartBloc(cartRepository: cartRepository)..add(LoadCart()),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: AppRoutes.routes,
    );
  }
}
