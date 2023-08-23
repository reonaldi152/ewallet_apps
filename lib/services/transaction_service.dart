import 'dart:convert';

import 'package:ewallet_apps/models/data_plan_form_model.dart';
import 'package:ewallet_apps/models/operator_card_model.dart';
import 'package:ewallet_apps/models/payment_method_model.dart';
import 'package:ewallet_apps/models/topup_form_model.dart';
import 'package:ewallet_apps/models/transaction_model%20copy.dart';
import 'package:ewallet_apps/models/transaction_model.dart';
import 'package:ewallet_apps/models/transfer_form_model.dart';
import 'package:ewallet_apps/services/auth_service.dart';
import 'package:ewallet_apps/shared/shared_values.dart';
import 'package:http/http.dart' as http;

class TransactionService {
  Future<List<PaymentMethodModel>> getPaymentMethods() async {
    try {
      final token = await AuthService().getToken();

      final res = await http.get(
        Uri.parse('$baseUrl/payment_methods'),
        headers: {
          'Authorization': token,
        },
      );

      print(res.body);

      if (res.statusCode == 200) {
        List<PaymentMethodModel> paymentMethods = List<PaymentMethodModel>.from(
          jsonDecode(res.body).map(
            (paymentMethod) => PaymentMethodModel.fromJson(paymentMethod),
          ),
        ).toList();

        return paymentMethods;
      } else {
        throw jsonDecode(res.body)['message'];
      }
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<String> topUp(TopupFormModel data) async {
    try {
      print(data.toJson());
      final token = await AuthService().getToken();

      final res = await http.post(
        Uri.parse('$baseUrl/top_ups'),
        headers: {
          'Authorization': token,
        },
        body: data.toJson(),
      );

      print(res.body);

      if (res.statusCode == 200) {
        return jsonDecode(res.body)['redirect_url'];
      }

      throw jsonDecode(res.body)['message'];
    } catch (e) {
      rethrow;
    }
  }

  Future<void> transfer(TransferFormModel data) async {
    try {
      print(data.toJson());
      final token = await AuthService().getToken();

      final res = await http.post(
        Uri.parse('$baseUrl/transfers'),
        headers: {
          'Authorization': token,
        },
        body: data.toJson(),
      );

      print(res.body);
      print(res.statusCode);

      if (res.statusCode != 200) {
        throw jsonDecode(res.body)['message'];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<OperatorCardModel>> getOperatorCards() async {
    try {
      final token = await AuthService().getToken();

      final res = await http.get(
        Uri.parse('$baseUrl/operator_cards'),
        headers: {
          'Authorization': token,
        },
      );

      if (res.statusCode == 200) {
        List<OperatorCardModel> users = List<OperatorCardModel>.from(
          jsonDecode(res.body)['data'].map(
            (operatorCard) => OperatorCardModel.fromJson(operatorCard),
          ),
        ).toList();

        return users;
      }

      return throw jsonDecode(res.body)['message'];
    } catch (e) {
      rethrow;
    }
  }

  Future<void> dataPlan(DataPlanFormModel data) async {
    try {
      print(data.toJson());
      final token = await AuthService().getToken();

      final res = await http.post(
        Uri.parse('$baseUrl/data_plans'),
        headers: {
          'Authorization': token,
        },
        body: data.toJson(),
      );

      print(res.body);
      print(res.statusCode);

      if (res.statusCode != 200) {
        throw jsonDecode(res.body)['message'];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<TransactionModel>> getTransactions() async {
    try {
      final token = await AuthService().getToken();

      final res = await http.get(
        Uri.parse('$baseUrl/transactions'),
        headers: {
          'Authorization': token,
        },
      );

      print(res.body);

      if (res.statusCode == 200) {
        List<TransactionModel> transactions = List<TransactionModel>.from(
          jsonDecode(res.body)['data'].map(
            (transaction) => TransactionModel.fromJson(transaction),
          ),
        ).toList();

        return transactions;
      }

      throw jsonDecode(res.body)['message'];
    } catch (e) {
      rethrow;
    }
  }

  Future<List<AsingTransactionModel>> getTransactionsAsing() async {
    try {
      final token = await AuthService().getToken();

      final res = await http.get(
        Uri.parse('$baseUrl/international_transactions'),
        headers: {
          'Authorization': token,
        },
      );

      print(res.body);

      if (res.statusCode == 200) {
        List<AsingTransactionModel> transactions =
            List<AsingTransactionModel>.from(
          jsonDecode(res.body)['data'].map(
            (transaction) => AsingTransactionModel.fromJson(transaction),
          ),
        ).toList();

        return transactions;
      }

      throw jsonDecode(res.body)['message'];
    } catch (e) {
      rethrow;
    }
  }
}
