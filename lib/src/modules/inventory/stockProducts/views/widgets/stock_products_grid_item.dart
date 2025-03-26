import 'package:flutter/material.dart';

class StockProductsGridItem extends StatelessWidget {
  const StockProductsGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Image(
              image: NetworkImage('https://picsum.photos/200/300'),
              height: 180,
              fit: BoxFit.fill,
            ),
            Spacer(),
            StockProductGridItemDetail(),
            Spacer(),
            StockProductGridItemStatus(),
          ],
        ),
      ),
    );
  }
}

class StockProductGridItemDetail extends StatelessWidget {
  const StockProductGridItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Monitor asus 27 pulgadas color negro',
          textAlign: TextAlign.center,
        ),
        Text('Montañas negras', textAlign: TextAlign.center),
      ],
    );
  }
}

class StockProductGridItemStatus extends StatelessWidget {
  const StockProductGridItemStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 50,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 61, 8, 8),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Text(
                "299",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
