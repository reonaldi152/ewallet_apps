import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum BarcodeScanState {
  initial,
  scanning,
  success,
  error,
}

enum NavigationState {
  initial,
  amountPage,
}

class BarcodeScanCubit extends Cubit<BarcodeScanState> {
  String scanResult = '';

  BarcodeScanCubit() : super(BarcodeScanState.initial);

  Future<void> scanBarcode() async {
    try {
      scanResult = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666",
        "Cancel",
        true,
        ScanMode.QR,
      );
      if (scanResult.isNotEmpty) {
        emit(BarcodeScanState.success);
      } else {
        emit(BarcodeScanState.error);
      }
    } catch (e) {
      debugPrint("ini error scan $e");
      emit(BarcodeScanState.error);
    }
  }
}
