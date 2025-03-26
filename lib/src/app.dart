import 'package:flutter/material.dart';
import 'package:store_manager/src/modules/inventory/stockProducts/views/stock_products_view.dart';

class StoreManagerApp extends StatelessWidget {
  const StoreManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: StockProductsView());
  }
}
