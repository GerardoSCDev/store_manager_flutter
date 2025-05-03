import 'package:flutter/material.dart';
import 'package:store_manager/db/entities/product.dart';

class AddProductsItemWidget extends StatelessWidget {
  final Product product;

  const AddProductsItemWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image(
                image: NetworkImage('https://picsum.photos/200/300'),
                height: 80,
                width: 80,
                fit: BoxFit.fill,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(product.name),
                    Text(product.quantity.toString()),
                    Text(product.sku),
                  ],
                ),
              ),
              SizedBox(
                width: 40,
                child: IconButton.filled(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                ),
              ),
              SizedBox(
                width: 40,
                child: IconButton.filled(
                  onPressed: () {},
                  icon: Icon(Icons.edit),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
