import 'package:flutter/material.dart';
import 'view/products_overview_screen.dart';
import 'utils/app_routes.dart';
import 'package:provider/provider.dart';
import 'view/product_detail_screen.dart';
import './providers/products.dart';

void main() => runApp(StoreAPP());

class StoreAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Products(),
      child: MaterialApp(
        title: 'Minha Loja',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductOverviewScreen(),
        routes: {AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailScreen()},
      ),
    );
  }
}