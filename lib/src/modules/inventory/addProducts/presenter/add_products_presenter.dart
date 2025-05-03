import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:store_manager/src/modules/inventory/addProducts/interactor/add_products_interactor.dart';
import 'package:store_manager/src/modules/inventory/addProducts/interactor/add_products_interactor_contract.dart';
import 'package:store_manager/src/modules/inventory/addProducts/presenter/add_products_presenter_contract.dart';

import '../../../../../db/entities/product.dart';
import '../views/add_prodcuts_view_contract.dart';

class AddProductsPresenter extends ChangeNotifier
    implements AddProductsPresenterContract {
  final AddProdcutsViewContract view;
  final AddProductsInteractorContract interactor = AddProductsInteractor();

  final List<Product> _newProducts = [];
  List<Product> get newProducts => _newProducts;

  final List<Product> _updateProducts = [];
  List<Product> get updateProducts => _updateProducts;

  final MobileScannerController _scanController = MobileScannerController();
  MobileScannerController get scanController => _scanController;

  AddProductsPresenter({required this.view});

  @override
  void addProduct(String barcode) {
    newProducts.add(
      Product(
        name: "name",
        sku: barcode,
        category: "category",
        quantity: 1,
        price: 0.0,
        cost: 1.0,
      ),
    );
    notifyListeners();
  }
}
