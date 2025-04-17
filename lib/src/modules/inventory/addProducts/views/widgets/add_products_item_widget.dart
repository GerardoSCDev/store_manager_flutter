import 'package:flutter/material.dart';

class AddProductsItemWidget extends StatelessWidget {
  const AddProductsItemWidget({super.key});

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
                    Text("Television Samsum 25 pulgadas"),
                    Text("Agregados: 20"),
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
