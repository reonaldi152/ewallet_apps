import 'package:ewallet_apps/blocs/auth/auth_bloc.dart';
import 'package:ewallet_apps/blocs/transfer/transfer_bloc.dart';
import 'package:ewallet_apps/models/transfer_form_model.dart';
import 'package:ewallet_apps/services/exchange_service.dart';
import 'package:ewallet_apps/shared/helpers.dart';
import 'package:ewallet_apps/shared/theme.dart';
import 'package:ewallet_apps/ui/pages/success_page.dart';
import 'package:ewallet_apps/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class PenukaranAmountPage extends StatefulWidget {
  // final TransferFormModel data;
  final dynamic symbols;
  final dynamic country;
  final dynamic balance;

  const PenukaranAmountPage({
    Key? key,
    this.country,
    this.symbols,
    this.balance,
    // required this.data,
  }) : super(key: key);

  @override
  State<PenukaranAmountPage> createState() => _PenukaranAmountPageState();
}

class _PenukaranAmountPageState extends State<PenukaranAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();

    amountController.addListener(() {
      final text = amountController.text;

      amountController.value = amountController.value.copyWith(
        text: NumberFormat.currency(
          locale: 'id',
          decimalDigits: 0,
          symbol: '',
        ).format(
          int.parse(
            text.replaceAll('.', ''),
          ),
        ),
      );
    });
  }

  addAmount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }
    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
        if (amountController.text == '') {
          amountController.text = '0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: BlocProvider(
        create: (context) => TransferFormBloc(),
        child: BlocConsumer<TransferFormBloc, TransferFormState>(
          listener: (context, state) {
            if (state is TransferFormFailed) {
              showCustomSnackbar(context, state.e);
            }
            if (state is TransferFormSuccess) {
              context.read<AuthBloc>().add(
                    AuthUpdateBalance(
                      int.parse(
                            amountController.text.replaceAll('.', ''),
                          ) *
                          -1,
                    ),
                  );
              Navigator.pushNamedAndRemoveUntil(
                  context, '/transfer-success', (route) => false);
            }
          },
          builder: (context, state) {
            if (state is TransferFormLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 58,
              ),
              children: [
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: Text(
                    'Total Amount',
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 67,
                ),
                Align(
                  child: SizedBox(
                    width: 200,
                    child: TextFormField(
                      controller: amountController,
                      cursorColor: greyColor,
                      enabled: false,
                      style: whiteTextStyle.copyWith(
                        fontSize: 36,
                        fontWeight: medium,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Text(
                          'Rp',
                          style: whiteTextStyle.copyWith(
                            fontSize: 36,
                            fontWeight: medium,
                          ),
                        ),
                        disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: greyColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 66,
                ),
                Wrap(
                  spacing: 40,
                  runSpacing: 40,
                  children: [
                    CustomInputButton(
                      title: '1',
                      onTap: () {
                        addAmount('1');
                      },
                    ),
                    CustomInputButton(
                      title: '2',
                      onTap: () {
                        addAmount('2');
                      },
                    ),
                    CustomInputButton(
                      title: '3',
                      onTap: () {
                        addAmount('3');
                      },
                    ),
                    CustomInputButton(
                      title: '4',
                      onTap: () {
                        addAmount('4');
                      },
                    ),
                    CustomInputButton(
                      title: '5',
                      onTap: () {
                        addAmount('5');
                      },
                    ),
                    CustomInputButton(
                      title: '6',
                      onTap: () {
                        addAmount('6');
                      },
                    ),
                    CustomInputButton(
                      title: '7',
                      onTap: () {
                        addAmount('7');
                      },
                    ),
                    CustomInputButton(
                      title: '8',
                      onTap: () {
                        addAmount('8');
                      },
                    ),
                    CustomInputButton(
                      title: '9',
                      onTap: () {
                        addAmount('9');
                      },
                    ),
                    const SizedBox(
                      width: 60,
                      height: 60,
                    ),
                    CustomInputButton(
                      title: '0',
                      onTap: () {
                        addAmount('0');
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        deleteAmount();
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: numberBackgroundColor,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomFilledButton(
                  title: 'Selanjutnya',
                  onPressed: () async {
                    debugPrint("ini balance ${widget.balance}");
                    if (int.parse(amountController.text.replaceAll('.', '')) >=
                        10000) {
                      postExchange(
                          widget.symbols,
                          amountController.text.replaceAll('.', ''),
                          widget.country);
                    } else {
                      showCustomSnackbar(context, "Harus lebih dari 10.000");
                    }
                    // if (int.parse(widget.balance) >=
                    //     int.parse(amountController.text.replaceAll('.', ''))) {

                    // } else {
                    //   showCustomSnackbar(
                    //       context, "saldo rupiah anda belum cukup");
                    // }

                    // if (await Navigator.pushNamed(context, '/pin') == true) {
                    //   final authState = context.read<AuthBloc>().state;
                    //   String pin = '';
                    //   if (authState is AuthSuccess) {
                    //     pin = authState.data.pin!;
                    //   }

                    //   context.read<TransferFormBloc>().add(
                    //         TransferFormPost(
                    //           widget.data.copyWith(
                    //             pin: pin,
                    //             amount:
                    //                 amountController.text.replaceAll('.', ''),
                    //           ),
                    //         ),
                    //       );
                    // }
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomTextButton(
                  title: 'Terms & Conditions',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            );
          },
        ),
      ),
      // body: ListView(
      //   padding: const EdgeInsets.symmetric(
      //     horizontal: 58,
      //   ),
      //   children: [
      //     const SizedBox(
      //       height: 60,
      //     ),
      //     Center(
      //       child: Text(
      //         'Total Amount',
      //         style: whiteTextStyle.copyWith(
      //           fontSize: 20,
      //           fontWeight: semiBold,
      //         ),
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 67,
      //     ),
      //     Align(
      //       child: SizedBox(
      //         width: 200,
      //         child: TextFormField(
      //           controller: amountController,
      //           cursorColor: greyColor,
      //           enabled: false,
      //           style: whiteTextStyle.copyWith(
      //             fontSize: 36,
      //             fontWeight: medium,
      //           ),
      //           decoration: InputDecoration(
      //             prefixIcon: Text(
      //               'Rp',
      //               style: whiteTextStyle.copyWith(
      //                 fontSize: 36,
      //                 fontWeight: medium,
      //               ),
      //             ),
      //             disabledBorder: UnderlineInputBorder(
      //               borderSide: BorderSide(
      //                 color: greyColor,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 66,
      //     ),
      //     Wrap(
      //       spacing: 40,
      //       runSpacing: 40,
      //       children: [
      //         CustomInputButton(
      //           title: '1',
      //           onTap: () {
      //             addAmount('1');
      //           },
      //         ),
      //         CustomInputButton(
      //           title: '2',
      //           onTap: () {
      //             addAmount('2');
      //           },
      //         ),
      //         CustomInputButton(
      //           title: '3',
      //           onTap: () {
      //             addAmount('3');
      //           },
      //         ),
      //         CustomInputButton(
      //           title: '4',
      //           onTap: () {
      //             addAmount('4');
      //           },
      //         ),
      //         CustomInputButton(
      //           title: '5',
      //           onTap: () {
      //             addAmount('5');
      //           },
      //         ),
      //         CustomInputButton(
      //           title: '6',
      //           onTap: () {
      //             addAmount('6');
      //           },
      //         ),
      //         CustomInputButton(
      //           title: '7',
      //           onTap: () {
      //             addAmount('7');
      //           },
      //         ),
      //         CustomInputButton(
      //           title: '8',
      //           onTap: () {
      //             addAmount('8');
      //           },
      //         ),
      //         CustomInputButton(
      //           title: '9',
      //           onTap: () {
      //             addAmount('9');
      //           },
      //         ),
      //         const SizedBox(
      //           width: 60,
      //           height: 60,
      //         ),
      //         CustomInputButton(
      //           title: '0',
      //           onTap: () {
      //             addAmount('0');
      //           },
      //         ),
      //         GestureDetector(
      //           onTap: () {
      //             deleteAmount();
      //           },
      //           child: Container(
      //             width: 60,
      //             height: 60,
      //             decoration: BoxDecoration(
      //               shape: BoxShape.circle,
      //               color: numberBackgroundColor,
      //             ),
      //             child: Center(
      //               child: Icon(
      //                 Icons.arrow_back,
      //                 color: whiteColor,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //     const SizedBox(
      //       height: 50,
      //     ),
      //     CustomFilledButton(
      //       title: 'Continue',
      //       onPressed: () async {
      //         if (await Navigator.pushNamed(context, '/pin') == true) {
      //           // final authState = context.read<AuthBloc>().state;
      //           // String pin = '';
      //           // if (authState is AuthSuccess) {
      //           //   pin = authState.data.pin!;
      //           // }

      //           // context.read<TransferFormBloc>().add(
      //           //       TransferFormPost(
      //           //         widget.data.copyWith(
      //           //           pin: pin,
      //           //           amount:
      //           //               amountController.text.replaceAll('.', ''),
      //           //         ),
      //           //       ),
      //           //     );
      //           Navigator.pushNamedAndRemoveUntil(
      //               context, '/transfer-success', (route) => false);
      //         }
      //       },
      //     ),
      //     const SizedBox(
      //       height: 25,
      //     ),
      //     CustomTextButton(
      //       title: 'Terms & Conditions',
      //       onPressed: () {},
      //     ),
      //     const SizedBox(
      //       height: 40,
      //     ),
      //   ],
      // ),
    );
  }

  postExchange(symbols, amount, country) async {
    ExchangeService()
        .postExchange(amount, symbols, country)
        .then((Map<String, dynamic>? value) {
      debugPrint("ini value exchange ${value?['message']}");
      if (value?['message'].toString() == "Exchange Success") {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                SuccessPage(desc: "Penukaran Mata Uang Sukses"),
          ),
        );
      } else if (value?['message'].toString() == "Your balance is not enough") {
        showCustomSnackbar(context, "Saldo Rupiah anda kurang");
      } else {
        showCustomSnackbar(context, "Error");
      }
    });
  }
}
