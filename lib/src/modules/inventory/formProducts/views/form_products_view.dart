import 'package:flutter/material.dart';

class FormProductsView extends StatelessWidget {
  const FormProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 10,
            width: 10,
            color: Colors.black,
            padding: EdgeInsets.only(left: 10, right: 10),
          ),
        ],
      ),
    );
  }
}
