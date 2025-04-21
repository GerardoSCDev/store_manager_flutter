import 'package:flutter/material.dart';
import 'package:store_manager/src/modules/inventory/formProducts/views/form_products_view.dart';

class FormProductsRouter {
  static void showBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (_) => FormProductsView());
  }
}
