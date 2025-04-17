import 'package:flutter/material.dart';

import 'widgets/add_products_empty_list_widget.dart';
import 'widgets/add_products_app_bar_widget.dart';
import 'widgets/add_products_expansion_panel_widget.dart';
import 'widgets/add_products_scanner_widget.dart';

class AddProductsView extends StatelessWidget {
  const AddProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddProductsAppBarWidget(),
      body: Column(
        spacing: 10,
        children: [
          AddProductsScannerWidget(),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Transform.translate(
                offset: Offset(0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),

                  //child: AddProductsEmptyListWidget(),

                  /// Empty products
                  child: Column(
                    children: [
                      AddProductExpansionPanelWidget(),

                      /// New Products
                      AddProductExpansionPanelWidget(),

                      /// Update Products
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
