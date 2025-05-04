import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_manager/src/modules/inventory/formProducts/router/form_products_router.dart';

import '../../presenter/add_products_presenter.dart';

class AddProductsAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  AddProductsAppBarWidget({super.key})
    : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    final presenter = Provider.of<AddProductsPresenter>(context, listen: false);
    return AppBar(
      title: Text("Nuevos productos", style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.blueGrey,
      leading: BackButton(color: Colors.white),
      actions: [
        TextButton(
          onPressed: () {
            FormProductsRouter.showBottomSheet(context, presenter);
          },
          child: Text("Guardar", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
