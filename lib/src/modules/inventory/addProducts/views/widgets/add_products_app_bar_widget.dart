import 'package:flutter/material.dart';

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
          onPressed: () {},
          child: Text("Guardar", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
