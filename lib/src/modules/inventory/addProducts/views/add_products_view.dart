import 'package:flutter/material.dart';
import 'package:store_manager/src/modules/inventory/addProducts/presenter/add_products_presenter.dart';
import 'package:provider/provider.dart';

import 'add_prodcuts_view_contract.dart';
import 'widgets/add_products_empty_list_widget.dart';
import 'widgets/add_products_app_bar_widget.dart';
import 'widgets/add_products_expansion_panel_widget.dart';
import 'widgets/add_products_scanner_widget.dart';

class AddProductsView extends StatefulWidget {
  const AddProductsView({super.key});

  @override
  State<AddProductsView> createState() => _AddProductsViewState();
}

class _AddProductsViewState extends State<AddProductsView>
    implements AddProdcutsViewContract {
  late AddProductsPresenter presenter;

  @override
  void initState() {
    super.initState();
    presenter = AddProductsPresenter(view: this);
  }

  Widget _listProducts() {
    return Column(
      children: [
        AddProductExpansionPanelWidget(
          typeProduct: TypeInputProduct.newProduct,
        ),

        /// New Products
        AddProductExpansionPanelWidget(
          typeProduct: TypeInputProduct.updateProduct,
        ),

        /// Update Products
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: presenter,
      child: Scaffold(
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
                    child: Consumer<AddProductsPresenter>(
                      builder: (context, presenter, child) {
                        bool isEmptyProducts =
                            presenter.newProducts.isEmpty &&
                            presenter.updateProducts.isEmpty;
                        return (isEmptyProducts)
                            ? AddProductsEmptyListWidget()
                            : _listProducts();
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void didSacanProduct() {}
}
