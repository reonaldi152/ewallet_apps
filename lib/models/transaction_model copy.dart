class AsingTransactionModel {
  final dynamic id;
  final dynamic amount;
  final String? createdAt;
  final dynamic currency;
  final dynamic description;
  final TransactionTypeModel? transactionType;

  AsingTransactionModel({
    this.id,
    this.amount,
    this.createdAt,
    this.transactionType,
    this.currency,
    this.description,
  });

  factory AsingTransactionModel.fromJson(Map<String, dynamic> json) =>
      AsingTransactionModel(
        currency: json['currency'],
        description: json['description'],
        id: json['id'],
        amount: json['amount'],
        createdAt: json['created_at'],
        transactionType: json['transaction_type'] == null
            ? null
            : TransactionTypeModel.fromJson(
                json['transaction_type'],
              ),
      );
}

class TransactionTypeModel {
  final dynamic id;
  final String? name;
  final String? code;
  final String? action;
  final String? thumbnail;

  TransactionTypeModel({
    this.id,
    this.name,
    this.code,
    this.action,
    this.thumbnail,
  });

  factory TransactionTypeModel.fromJson(Map<String, dynamic> json) =>
      TransactionTypeModel(
        id: json['id'],
        name: json['name'],
        code: json['code'],
        action: json['action'],
        thumbnail: json['thumbnail'],
      );
}
