import 'package:flutter/material.dart';
import 'view/products_overview_screen.dart';
import 'utils/app_routes.dart';
import './view/cart_screen.dart';
import 'package:provider/provider.dart';
import 'view/product_detail_screen.dart';
import './providers/cart.dart';
import './providers/orders.dart';
import './providers/products.dart';
import 'view/orders_screen.dart';

void main() => runApp(StoreAPP());

class StoreAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Products(),
        ),
        ChangeNotifierProvider(
          create: (_) => new Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => new Orders(),
        ),
      ],
      child: MaterialApp(
        title: 'Minha Loja',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductOverviewScreen(),
        routes: {
          AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailScreen(),
          AppRoutes.CART: (ctx) => CartScreen(),
          AppRoutes.ORDERS: (ctx) => OrdersScreen(),
        },
      ),
    );
  }
}
