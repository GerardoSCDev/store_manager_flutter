import 'package:flutter/material.dart';

class AddProductsEmptyListWidget extends StatelessWidget {
  const AddProductsEmptyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: double.infinity,
      width: double.infinity,
      child: SizedBox(
        width: 300,
        height: 370,
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/empty_scanner.jpg'),
              fit: BoxFit.cover,
              height: 300,
              width: 300,
            ),
            Text("Escanea un nuevo producto"),
          ],
        ),
      ),
    );
  }
}
