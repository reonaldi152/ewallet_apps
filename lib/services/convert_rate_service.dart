import 'dart:convert';
import 'package:ewallet_apps/models/barcode_model.dart';
import 'package:ewallet_apps/models/info_rates_model.dart';
import 'package:ewallet_apps/models/symbols_rates_models.dart';
import 'package:ewallet_apps/services/auth_service.dart';
import 'package:ewallet_apps/shared/shared_values.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

final _baseUrl = "https://api.exchangerate.host";

dynamic symbols =
    "AUD,BND,CAD,CHF,CNH,CNY,DKK,EUR,GBP,HKD,JPY,KRW,KWD,LAK,MYR,NOK,NZD,PGK,PHP,SAR,SEK,SGD,THB,USD,VND,IDR";

class ConvertRateService {
  Future<InfoRatesModel> getInfoRates(base, amount) async {
    try {
      final res = await http.get(
        Uri.parse(
            '$_baseUrl/latest?base=$base&amount=$amount&symbols=$symbols'),
      );

      debugPrint(res.body);

      if (res.statusCode == 200) {
        Map<String, dynamic> responseBody = jsonDecode(res.body);
        InfoRatesModel inforRates = InfoRatesModel.fromJson(responseBody);

        return inforRates;
      } else {
        throw jsonDecode(res.body)['message'];
      }
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<SymbolsRatesModel> getSymbols() async {
    try {
      final res = await http.get(
        Uri.parse('$_baseUrl/symbols'),
      );

      debugPrint(res.body);

      if (res.statusCode == 200) {
        Map<String, dynamic> responseBody = jsonDecode(res.body);
        SymbolsRatesModel symbolsRates =
            SymbolsRatesModel.fromJson(responseBody);

        return symbolsRates;
      } else {
        throw jsonDecode(res.body)['message'];
      }
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
