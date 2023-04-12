import 'package:ewallet_apps/models/operator_card_model.dart';
import 'package:ewallet_apps/shared/theme.dart';
import 'package:flutter/material.dart';

class DataProviderItem extends StatelessWidget {
  final OperatorCardModel operator;
  final bool isSelected;
  // final String imageUrl;
  // final String name;

  const DataProviderItem({
    Key? key,
    required this.operator,
    this.isSelected = false,
    // required this.imageUrl,
    // required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
        border: isSelected
            ? Border.all(
                width: 2,
                color: blueColor,
              )
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            operator.thumbnail!,
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                operator.name!,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                operator.status!,
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          // Image.asset(
          //   imageUrl,
          //   height: 30,
          // ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     Text(
          //       name,
          //       style: blackTextStyle.copyWith(
          //         fontSize: 16,
          //         fontWeight: medium,
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 2,
          //     ),
          //     Text(
          //       'avalaible',
          //       style: greyTextStyle.copyWith(
          //         fontSize: 12,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
