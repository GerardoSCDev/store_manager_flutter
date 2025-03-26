import 'package:flutter/material.dart';

import 'widgets/add_products_app_bar_widget.dart';
//import 'widgets/add_products_scanner_widget.dart';

class AddProductsView extends StatelessWidget {
  const AddProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddProductsAppBarWidget(),
      body: Column(
        spacing: 10,
        children: [
          //AddProductsScannerWidget(),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 30, offset: Offset(0, 10))],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    spacing: 10,
                    children: [
                      SizedBox(
                        height: 70,
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                            ),
                          ),
                          child: Center(child: Text("Nuevos productos")),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                            ),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Expanded(child: Text("Productos Actualizados")),
                                SizedBox(
                                  width: 50,
                                  child: Icon(Icons.arrow_right),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
