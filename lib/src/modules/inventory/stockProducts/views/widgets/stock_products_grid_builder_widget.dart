import 'package:flutter/material.dart';
import 'package:store_manager/src/modules/inventory/stockProducts/views/widgets/stock_products_grid_item.dart';

class StockProductsGridBuilderWidget extends StatelessWidget {
  const StockProductsGridBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            const snackBar = SnackBar(content: Text('Tap'));

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: StockProductsGridItem(),
        );
      },
    );
  }
}
