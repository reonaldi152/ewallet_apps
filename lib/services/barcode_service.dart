import 'dart:convert';
import 'package:ewallet_apps/models/barcode_model.dart';
import 'package:ewallet_apps/services/auth_service.dart';
import 'package:ewallet_apps/shared/shared_values.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BarcodeService {
  Future<List<BarcodeModel>> getBarcode(String username) async {
    try {
      final token = await AuthService().getToken();

      final res = await http.get(
        Uri.parse('$baseUrl/users/$username/barcodes'),
        headers: {
          'Authorization': token,
        },
      );

      debugPrint(res.body);

      if (res.statusCode == 200) {
        List<BarcodeModel> barcodes = List<BarcodeModel>.from(
          jsonDecode(res.body).map(
            (barcode) => BarcodeModel.fromJson(barcode),
          ),
        ).toList();

        return barcodes;
      } else {
        throw jsonDecode(res.body)['message'];
      }
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
