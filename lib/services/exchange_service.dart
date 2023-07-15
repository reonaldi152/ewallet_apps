import 'dart:convert';
import 'package:ewallet_apps/models/barcode_model.dart';
import 'package:ewallet_apps/services/auth_service.dart';
import 'package:ewallet_apps/shared/shared_values.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExchangeService {
  Future<Map<String, dynamic>?> postExchange(amount, symbols, country) async {
    try {
      final token = await AuthService().getToken();

      final res = await http.post(Uri.parse('$baseUrl/exchange'), headers: {
        'Authorization': token,
      }, body: {
        'amount': amount,
        'symbols': symbols,
        'country': country,
      });
      debugPrint("$amount,$symbols,$country");

      debugPrint(res.body);
      return jsonDecode(res.body);

      // if (res.statusCode == 200) {
      //   Map<String, dynamic> responseBody = jsonDecode(res.body);
      //   BarcodeModel barcodes = BarcodeModel.fromJson(responseBody);

      //   return barcodes;
      // } else {
      //   throw jsonDecode(res.body)['message'];
      // }
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<Map<String, dynamic>?> getHistroy() async {
    try {
      final token = await AuthService().getToken();

      final res = await http.get(
        Uri.parse('$baseUrl/users/exchange-currency/history'),
        headers: {
          'Authorization': token,
        },
      );

      debugPrint(res.body);
      return jsonDecode(res.body);

      // if (res.statusCode == 200) {
      //   Map<String, dynamic> responseBody = jsonDecode(res.body);
      //   BarcodeModel barcodes = BarcodeModel.fromJson(responseBody);

      //   return barcodes;
      // } else {
      //   throw jsonDecode(res.body)['message'];
      // }
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
