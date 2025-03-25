import 'package:flutter/material.dart';
import '../features/catalogue/presentation/pages/catalogue_page.dart';
import '../features/cart/presentation/pages/cart_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => CataloguePage(),
    '/cart': (context) => CartPage(),
  };
}
