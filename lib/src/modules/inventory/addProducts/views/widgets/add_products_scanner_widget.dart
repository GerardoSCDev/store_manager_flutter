import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';

import '../../../formProducts/router/form_products_router.dart';
import '../../presenter/add_products_presenter.dart';

class AddProductsScannerWidget extends StatelessWidget {
  const AddProductsScannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final presenter = Provider.of<AddProductsPresenter>(context, listen: false);

    return Container(
      height: 200,
      decoration: BoxDecoration(),
      child: ClipRRect(
        child: MobileScanner(
          controller: presenter.scanController,
          fit: BoxFit.cover,
          onDetect: (capture) {
            final List<Barcode> barcodes = capture.barcodes;
            for (final barcode in barcodes) {
              presenter.scanController.stop();
              FormProductsRouter.showBottomSheet(context);
              presenter.addProduct(barcode.rawValue ?? "");
            }
          },
        ),
      ),
    );
  }
}
