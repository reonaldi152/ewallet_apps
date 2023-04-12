import 'package:ewallet_apps/blocs/auth/auth_bloc.dart';
import 'package:ewallet_apps/blocs/operator_card/operator_card_bloc.dart';
import 'package:ewallet_apps/models/operator_card_model.dart';
import 'package:ewallet_apps/shared/helpers.dart';
import 'package:ewallet_apps/shared/theme.dart';
import 'package:ewallet_apps/ui/pages/data_package_page.dart';
import 'package:ewallet_apps/ui/widgets/buttons.dart';
import 'package:ewallet_apps/ui/widgets/data_provider_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataProviderPage extends StatefulWidget {
  const DataProviderPage({Key? key}) : super(key: key);

  @override
  State<DataProviderPage> createState() => _DataProviderPageState();
}

class _DataProviderPageState extends State<DataProviderPage> {
  OperatorCardModel? selectedOperator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Beli Data',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'From Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is AuthSuccess) {
                return Row(
                  children: [
                    Image.asset(
                      'assets/img_wallet.png',
                      width: 80,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.data.cardNumber!.replaceAllMapped(
                              RegExp(r".{4}"), (match) => "${match.group(0)} "),
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          // state.data.name!,
                          "Balance: ${formatCurrency(state.data.balance ?? 0)}",
                          style: greyTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }

              return Container();
            },
          ),
          // Row(
          //   children: [
          //     Image.asset(
          //       'assets/img_wallet.png',
          //       width: 80,
          //     ),
          //     const SizedBox(
          //       width: 16,
          //     ),
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           // state.data.cardNumber!.replaceAllMapped(
          //           //     RegExp(r".{4}"), (match) => "${match.group(0)} "),
          //           '8008 2208 1996',
          //           style: blackTextStyle.copyWith(
          //             fontSize: 16,
          //             fontWeight: medium,
          //           ),
          //         ),
          //         const SizedBox(
          //           height: 2,
          //         ),
          //         Text(
          //           // state.data.name!,
          //           "Balance: ${formatCurrency(1800000)}",
          //           // "Balance: ${formatCurrency(state.data.balance ?? 0)}",
          //           style: greyTextStyle.copyWith(
          //             fontSize: 12,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Provider',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          BlocProvider(
            create: (context) => OperatorCardBloc()..add(OperatorCardGet()),
            child: BlocBuilder<OperatorCardBloc, OperatorCardState>(
              builder: (context, state) {
                if (state is OperatorCardSuccess) {
                  return Column(
                    children: state.operators.map((operator) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedOperator = operator;
                          });
                        },
                        child: DataProviderItem(
                          operator: operator,
                          isSelected: operator.id == selectedOperator?.id,
                        ),
                      );
                    }).toList(),
                  );
                }

                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
          // const DataProviderItem(
          //   imageUrl: 'assets/img_provider_telkomsel.png',
          //   name: 'Telkomsel',
          //   isSelected: true,
          // ),
          // const DataProviderItem(
          //   imageUrl: 'assets/img_provider_indosat.png',
          //   name: 'Indosat',
          // ),
          // const SizedBox(
          //   height: 120,
          // ),

          // CustomFilledButton(
          //   title: 'Continue',
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => DataPackagePage(),
          //       ),
          //     );
          //   },
          // ),
          const SizedBox(
            height: 57,
          ),
        ],
      ),
      floatingActionButton: (selectedOperator != null)
          ? Container(
              margin: const EdgeInsets.all(24),
              child: CustomFilledButton(
                title: 'Continue',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DataPackagePage(
                        operator: selectedOperator!,
                      ),
                    ),
                  );
                },
              ),
            )
          : Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
