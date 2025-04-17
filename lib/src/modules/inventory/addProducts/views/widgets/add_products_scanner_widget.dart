import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class AddProductsScannerWidget extends StatelessWidget {
  const AddProductsScannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(),
      child: ClipRRect(
        child: MobileScanner(
          fit: BoxFit.cover,
          onDetect: (capture) {
            final List<Barcode> barcodes = capture.barcodes;
            for (final barcode in barcodes) {
              debugPrint('Código escaneado: ${barcode.rawValue}');
            }
          },
        ),
      ),
    );
  }
}
