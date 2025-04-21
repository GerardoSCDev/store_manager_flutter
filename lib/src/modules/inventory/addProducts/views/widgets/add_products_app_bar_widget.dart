import 'package:flutter/material.dart';
import 'package:store_manager/src/modules/inventory/formProducts/router/form_products_router.dart';

class AddProductsAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  AddProductsAppBarWidget({super.key})
    : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Nuevos productos", style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.blueGrey,
      leading: BackButton(color: Colors.white),
      actions: [
        TextButton(
          onPressed: () {
            FormProductsRouter.showBottomSheet(context);
          },
          child: Text("Guardar", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
