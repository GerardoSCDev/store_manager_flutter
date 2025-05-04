import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_manager/src/modules/inventory/addProducts/presenter/add_products_presenter.dart';
import 'package:store_manager/src/modules/inventory/formProducts/views/form_products_view.dart';

class FormProductsRouter {
  static void showBottomSheet(
    BuildContext context,
    AddProductsPresenter presenter,
  ) async {
    final modal = await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder:
          (context) => ChangeNotifierProvider.value(
            value: presenter,
            child: FormProductsView(),
          ),
    );
    if (modal == null) {
      presenter.scanController.start();
    }
  }
}
