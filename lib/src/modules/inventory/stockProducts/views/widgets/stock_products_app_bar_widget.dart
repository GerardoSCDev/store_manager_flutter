import 'package:flutter/material.dart';

import '../../../addProducts/views/add_products_view.dart';

class StockProductsAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  StockProductsAppBarWidget({super.key})
    : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Inventario", style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.blueGrey,
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddProductsView()),
            );
          },
          icon: Icon(Icons.add),
          color: Colors.white,
        ),
      ],
    );
  }
}
