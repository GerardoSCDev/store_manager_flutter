import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../presenter/add_products_presenter.dart';
import 'add_products_item_widget.dart';

class AddProductExpansionPanelWidget extends StatefulWidget {
  final TypeInputProduct typeProduct;
  const AddProductExpansionPanelWidget({super.key, required this.typeProduct});

  @override
  State<AddProductExpansionPanelWidget> createState() =>
      _AddProductExpansionPanelWidget();
}

class _AddProductExpansionPanelWidget
    extends State<AddProductExpansionPanelWidget> {
  bool _isExpandedWidget = true;
  late TypeInputProduct productType;

  @override
  void initState() {
    super.initState();
    productType = widget.typeProduct;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Container(child: _buildSimplePanel()));
  }

  Widget _buildSimplePanel() {
    final presenter = Provider.of<AddProductsPresenter>(context, listen: false);
    final getProducts =
        productType == TypeInputProduct.newProduct
            ? presenter.newProducts
            : presenter.updateProducts;
    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          _isExpandedWidget = isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text("Nuevos productos ${getProducts.length}"),
            );
          },
          body: Container(
            constraints: BoxConstraints(
              maxHeight: (MediaQuery.of(context).size.height - 300 - 210) / 2,

              /// Line when two panels
              // maxHeight: MediaQuery.of(context).size.height,
            ),
            child: SingleChildScrollView(
              child: Column(
                children:
                    getProducts.map((product) {
                      return AddProductsItemWidget(product: product);
                    }).toList(),
              ),
            ),
          ),
          isExpanded: _isExpandedWidget,
        ),
      ],
    );
  }
}

enum TypeInputProduct { updateProduct, newProduct }
