import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class AddProductsScannerWidget extends StatelessWidget {
  const AddProductsScannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
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
