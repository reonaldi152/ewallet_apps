import 'package:ewallet_apps/models/transaction_model.dart';
import 'package:ewallet_apps/shared/helpers.dart';
import 'package:ewallet_apps/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeLatestTransactionItem extends StatelessWidget {
  final TransactionModel transaction;
  // final String iconUrl;
  // final String title;
  // final String time;
  // final String value;

  const HomeLatestTransactionItem({
    Key? key,
    // required this.iconUrl,
    // required this.title,
    // required this.time,
    // required this.value,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      child: Row(
        children: [
          // Image.network(
          //   transaction.transactionType!.thumbnail!,
          //   width: 48,
          // ),
          // Image.asset(
          //   iconUrl,
          //   width: 48,
          // ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.transactionType!.name!,
                  // title,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  dateToMonthDate(DateTime.parse(transaction.createdAt!)),
                  // time,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Text(
            (transaction.transactionType?.action == 'cr' ? '+ ' : '- ') +
                formatTransactionCurrency(num.parse(transaction.amount!)),
            // value,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
