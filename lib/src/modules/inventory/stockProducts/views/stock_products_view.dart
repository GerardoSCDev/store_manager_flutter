import 'package:flutter/material.dart';
import 'package:store_manager/src/modules/inventory/stockProducts/views/widgets/stock_products_app_bar_widget.dart';
import 'package:store_manager/src/modules/inventory/stockProducts/views/widgets/stock_products_grid_builder_widget.dart';

class StockProductsView extends StatelessWidget {
  const StockProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StockProductsAppBarWidget(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: StockProductsGridBuilderWidget(),
      ),
    );
  }
}
