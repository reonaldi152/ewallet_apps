import 'dart:convert';
import 'package:ewallet_apps/models/barcode_model.dart';
import 'package:ewallet_apps/services/auth_service.dart';
import 'package:ewallet_apps/shared/shared_values.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WithdrawService {
  Future<Map<String, dynamic>?> postWithdrawAsing(
      amount, symbols, country, pin) async {
    try {
      final token = await AuthService().getToken();

      final res = await http
          .post(Uri.parse('$baseUrl/international_withdraw'), headers: {
        'Authorization': token,
      }, body: {
        'amount': amount,
        'symbols': symbols,
        'country': country,
        'pin': pin,
      });

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

  Future<Map<String, dynamic>?> postTransferAsing(
      amount, symbols, country, pin, username) async {
    try {
      final token = await AuthService().getToken();

      final res = await http
          .post(Uri.parse('$baseUrl/international_transfers'), headers: {
        'Authorization': token,
      }, body: {
        'amount': amount,
        'symbols': symbols,
        'country': country,
        'pin': pin,
        'send_to': username,
      });

      debugPrint(res.body);
      return jsonDecode(res.body);

      // }
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
