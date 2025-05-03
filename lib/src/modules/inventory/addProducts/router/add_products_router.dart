import 'package:flutter/material.dart';
import 'package:store_manager/src/modules/inventory/addProducts/views/add_products_view.dart';

class AddProductsRouter {
  static final AddProductsRouter instance = AddProductsRouter();

  Widget goToAddProductsView() {
    return AddProductsView();
  }
}
