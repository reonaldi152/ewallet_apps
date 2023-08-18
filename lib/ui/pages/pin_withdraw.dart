import 'dart:math';

import 'package:another_flushbar/flushbar.dart';
import 'package:ewallet_apps/blocs/auth/auth_bloc.dart';
import 'package:ewallet_apps/services/withdraw_service.dart';
import 'package:ewallet_apps/shared/helpers.dart';
import 'package:ewallet_apps/shared/theme.dart';
import 'package:ewallet_apps/ui/pages/success_page.dart';
import 'package:ewallet_apps/ui/pages/withdraw_asing_confirm_page.dart';
import 'package:ewallet_apps/ui/pages/withdraw_confirm_page.dart';
import 'package:ewallet_apps/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PinWithdraw extends StatefulWidget {
  const PinWithdraw({Key? key, this.amount}) : super(key: key);
  final dynamic amount;

  @override
  State<PinWithdraw> createState() => _PinWithdrawState();
}

class _PinWithdrawState extends State<PinWithdraw> {
  final TextEditingController pinController = TextEditingController(text: '');
  String pin = '';
  bool isError = false;

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }

    if (pinController.text.length == 6) {
      if (pinController.text == pin) {
        debugPrint("ini ya $pin");
        postWithdraw(
          amount: widget.amount,
          pin: pin,
        );
      } else {
        setState(() {
          isError = true;
        });
        showCustomSnackbar(context, 'PIN yang anda masukkan salah');
      }
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        isError = false;
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    final state = context.read<AuthBloc>().state;
    if (state is AuthSuccess) {
      pin = state.data.pin!;
      debugPrint("ini pinn $pin");
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: darkBackgroundColor,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 58,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'MimoPay PIN',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    const SizedBox(
                      height: 72,
                    ),
                    SizedBox(
                      width: 200,
                      child: TextFormField(
                        controller: pinController,
                        obscureText: true,
                        cursorColor: greyColor,
                        obscuringCharacter: '*',
                        enabled: false,
                        style: whiteTextStyle.copyWith(
                          fontSize: 36,
                          fontWeight: medium,
                          letterSpacing: 16,
                          color: isError ? redColor : whiteColor,
                        ),
                        decoration: InputDecoration(
                          disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: greyColor,
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
                            addPin('1');
                          },
                        ),
                        CustomInputButton(
                          title: '2',
                          onTap: () {
                            addPin('2');
                          },
                        ),
                        CustomInputButton(
                          title: '3',
                          onTap: () {
                            addPin('3');
                          },
                        ),
                        CustomInputButton(
                          title: '4',
                          onTap: () {
                            addPin('4');
                          },
                        ),
                        CustomInputButton(
                          title: '5',
                          onTap: () {
                            addPin('5');
                          },
                        ),
                        CustomInputButton(
                          title: '6',
                          onTap: () {
                            addPin('6');
                          },
                        ),
                        CustomInputButton(
                          title: '7',
                          onTap: () {
                            addPin('7');
                          },
                        ),
                        CustomInputButton(
                          title: '8',
                          onTap: () {
                            addPin('8');
                          },
                        ),
                        CustomInputButton(
                          title: '9',
                          onTap: () {
                            addPin('9');
                          },
                        ),
                        const SizedBox(
                          width: 60,
                          height: 60,
                        ),
                        CustomInputButton(
                          title: '0',
                          onTap: () {
                            addPin('0');
                          },
                        ),
                        GestureDetector(
                          onTap: () {
                            deletePin();
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
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  postWithdraw({amount, pin}) async {
    WithdrawService()
        .postWithdrawRupiah(amount, pin)
        .then((Map<String, dynamic>? value) {
      debugPrint("ini value withdraw asing ${value?['message']}");
      debugPrint("ini value withdraw asing $value");

      if (value?['message'].toString() == "Withdraw Success") {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WithdrawConfirmPage(
                amount: amount,
                codeWithdraw: value?['transaction_code'],
              ),
            ));
      } else if (value?['message'].toString() == "Your balance is not enough") {
        showCustomSnackbar(context, "Saldo anda kurang");
      } else {
        showCustomSnackbar(context, "Error");
      }
    });
  }
}
