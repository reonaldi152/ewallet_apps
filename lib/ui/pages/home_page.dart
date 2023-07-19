import 'package:ewallet_apps/blocs/auth/auth_bloc.dart';
import 'package:ewallet_apps/blocs/bloc/tips/tips_bloc.dart';
import 'package:ewallet_apps/blocs/bloc/transaction_bloc.dart';
import 'package:ewallet_apps/blocs/user/user_bloc.dart';
import 'package:ewallet_apps/models/transfer_form_model.dart';
import 'package:ewallet_apps/shared/helpers.dart';
import 'package:ewallet_apps/shared/theme.dart';
import 'package:ewallet_apps/ui/pages/barcode_page.dart';
import 'package:ewallet_apps/ui/pages/converter_page.dart';
import 'package:ewallet_apps/ui/pages/money_changer_home.dart';
import 'package:ewallet_apps/ui/pages/money_changer_page.dart';
import 'package:ewallet_apps/ui/pages/transfer_amount_page.dart';
import 'package:ewallet_apps/ui/pages/transfer_asing_page.dart';
import 'package:ewallet_apps/ui/pages/transfer_asing_page.dart.dart';
import 'package:ewallet_apps/ui/pages/withdraw_asing_page.dart';
import 'package:ewallet_apps/ui/pages/withdraw_page.dart';
import 'package:ewallet_apps/ui/widgets/home_latest_transaction_item.dart';
import 'package:ewallet_apps/ui/widgets/home_service_item.dart';
import 'package:ewallet_apps/ui/widgets/home_tips_item.dart';
import 'package:ewallet_apps/ui/widgets/home_user_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/barcode_blocs/barcode_blocs.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  dynamic balance;

  void onBottomNavItemTapped(int index) {
    setState(() {
      selectedIndex = index; // Update the selected index
    });

    // Handle the specific item's tap event
    if (index == 0) {
      Navigator.pushNamed(context, '/home');
    } else if (index == 1) {
      Navigator.pushNamed(context, '/historyPayment');
    }
  }

  dynamic username;

  void _dialogQR() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            title: Text("Pindai Pembayaran"),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BlocListener<BarcodeScanCubit, BarcodeScanState>(
                    listener: (context, state) {
                      if (state == BarcodeScanState.success) {
                        final scanResult =
                            context.read<BarcodeScanCubit>().scanResult;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TransferAmountPage(
                              data: TransferFormModel(
                                sendTo: scanResult,
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    child: SizedBox(
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<BarcodeScanCubit>().scanBarcode();
                        },
                        child: Text('Scan'),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 120,
                  //   child: ElevatedButton(
                  //       style: ButtonStyle(
                  //         backgroundColor:
                  //             MaterialStatePropertyAll(purpleColor),
                  //       ),
                  //       onPressed: () {
                  //         Navigator.pop(context);

                  //         scanBarcode();

                  //         // Navigator.push(
                  //         //   context,
                  //         //   MaterialPageRoute(
                  //         //     builder: (context) => TransferAmountPage(
                  //         //       data: TransferFormModel(
                  //         //         sendTo: scanResultt.toString(),
                  //         //       ),
                  //         //     ),
                  //         //   ),
                  //         // );

                  //         // if (scanResultt != null) {
                  //         //   Navigator.push(
                  //         //     context,
                  //         //     MaterialPageRoute(
                  //         //       builder: (context) => TransferAmountPage(
                  //         //         data: TransferFormModel(
                  //         //           sendTo: scanResultt.toString(),
                  //         //         ),
                  //         //       ),
                  //         //     ),
                  //         //   );
                  //         // }
                  //       },
                  //       child: const Text("scan")),
                  // ),

                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(purpleColor),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    BarcodePage(username: username),
                              ));
                        },
                        child: const Text("barcode")),
                  ),
                  // ),
                ],
              ),
            ],
          );
        });
  }

  void _dialogTransfer() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            title: Center(child: Text("Transfer")),
            content: Text("Ingin transfer mata uang asing atau rupiah"),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(purpleColor),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/transfer');
                        },
                        child: const Text("Rupiah")),
                  ),

                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(purpleColor),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TransferAsingPage(),
                              ));
                        },
                        child: const Text("Asing")),
                  ),
                  // ),
                ],
              ),
            ],
          );
        });
  }

  void _dialogSaldo() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            title: Text(
              "Saldo Anda",
              style: blackTextStyle.copyWith(fontWeight: FontWeight.w700),
            ),
            content: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
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
                                      RegExp(r".{4}"),
                                      (match) => "${match.group(0)} "),
                                  style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: medium,
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  state.data.name!,
                                  style: greyTextStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  formatCurrency(num.parse(state.data.balance))
                                      .toString(),
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
                ],
              ),
            ),
          );
        });
  }

  void _dialogWithdraw() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            title: Center(child: Text("Penarikan")),
            content: Text("Ingin tarik mata uang asing atau rupiah"),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(purpleColor),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    WithdrawPage(balance: balance),
                              ));
                        },
                        child: const Text("Rupiah")),
                  ),

                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(purpleColor),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WithdrawAsingPage()));
                        },
                        child: const Text("Asing")),
                  ),
                  // ),
                ],
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: whiteColor,
          shape: const CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          notchMargin: 6,
          elevation: 0,
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: onBottomNavItemTapped,
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            elevation: 0,
            selectedItemColor: blueColor,
            unselectedItemColor: blackColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: blueTextStyle.copyWith(
              fontSize: 10,
              fontWeight: medium,
            ),
            unselectedLabelStyle: blackTextStyle.copyWith(
              fontSize: 10,
              fontWeight: medium,
            ),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_overview.png',
                  width: 20,
                  color: blueColor,
                ),
                label: 'Overview',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_history.png',
                  width: 20,
                ),
                label: 'History',
              ),
              // BottomNavigationBarItem(
              //   icon: Image.asset(
              //     'assets/ic_statistic.png',
              //     width: 20,
              //   ),
              //   label: 'Statistic',
              // ),
              // BottomNavigationBarItem(
              //   icon: Image.asset(
              //     'assets/ic_reward.png',
              //     width: 20,
              //   ),
              //   label: 'Reward',
              // ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _dialogQR();
          },
          backgroundColor: purpleColor,
          child: Image.asset(
            // 'assets/ic_plus_circle.png',
            'assets/pay.png',
            width: 24,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            buildProfile(context),
            buildWalletCard(),
            // buildLevel(),
            buildServices(context),
            // buildLatestTransactions(),
            buildSendAgain(),
            // buildFriendlyTips(),
            SizedBox(height: 30)
          ],
        ),
      ),
    );
  }

  Widget buildProfile(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          username = state.data.username;
          return Container(
            margin: const EdgeInsets.only(
              top: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  state.data.username.toString(),
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
                Image.asset('assets/text_mimopay.png', width: 76),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: state.data.profilePicture == null
                            ? const AssetImage(
                                'assets/img_profile.png',
                              )
                            : NetworkImage(state.data.profilePicture!)
                                as ImageProvider,
                      ),
                    ),
                    child: state.data.emailVerifiedAt != null
                        ? Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: whiteColor,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.check_circle,
                                  color: greenColor,
                                  size: 14,
                                ),
                              ),
                            ),
                          )
                        : Container(),
                  ),
                ),
              ],
            ),
          );
        }

        return Container();
      },
    );
  }

  Widget buildWalletCard() {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          balance = state.data.balance;
          return GestureDetector(
            onTap: () => _dialogSaldo(),
            child: Container(
              width: double.infinity,
              height: 220,
              margin: const EdgeInsets.only(
                top: 30,
              ),
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/img_bg_card.png',
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.data.name!,
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Text(
                    '**** **** **** ${state.data.cardNumber!.substring(12, 16)}',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                      letterSpacing: 6,
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  // GestureDetector(
                  //   onTap: () => _dialogSaldo(),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         'Saldo',
                  //         style: whiteTextStyle,
                  //       ),
                  //       Text(
                  //         formatCurrency(num.parse(state.data.balance))
                  //             .toString(),
                  //         style: whiteTextStyle.copyWith(
                  //           fontSize: 24,
                  //           fontWeight: semiBold,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Text(
                    'Saldo',
                    style: whiteTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        formatCurrency(num.parse(state.data.balance))
                            .toString(),
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        "Klik Saldoku >>",
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }

        return Container();
      },
    );

    // return Container(
    //   width: double.infinity,
    //   height: 220,
    //   margin: const EdgeInsets.only(
    //     top: 30,
    //   ),
    //   padding: const EdgeInsets.all(30),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(28),
    //     image: const DecorationImage(
    //       fit: BoxFit.cover,
    //       image: AssetImage(
    //         'assets/img_bg_card.png',
    //       ),
    //     ),
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Text(
    //         "reonaldi",
    //         style: whiteTextStyle.copyWith(
    //           fontSize: 18,
    //           fontWeight: medium,
    //         ),
    //       ),
    //       const SizedBox(
    //         height: 28,
    //       ),
    //       Text(
    //         '**** **** **** 1280',
    //         style: whiteTextStyle.copyWith(
    //           fontSize: 18,
    //           fontWeight: medium,
    //           letterSpacing: 6,
    //         ),
    //       ),
    //       const SizedBox(
    //         height: 21,
    //       ),
    //       Text(
    //         'Balance',
    //         style: whiteTextStyle,
    //       ),
    //       Text(
    //         formatCurrency(12500),
    //         style: whiteTextStyle.copyWith(
    //           fontSize: 24,
    //           fontWeight: semiBold,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }

  Widget buildLevel() {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Level 1',
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              const Spacer(),
              Text(
                '55% ',
                style: greenTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
              Text(
                'of ${formatCurrency(20000)}',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              value: 0.55,
              minHeight: 5,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: lightBackgroundColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildServices(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(scanResultt.toString()),
          Text(
            'Fitur',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            children: [
              HomeServiceItem(
                iconUrl: 'assets/logo_topup.png',
                title: 'Isi saldo',
                onTap: () {
                  Navigator.pushNamed(context, '/topup');
                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/logo_transfer.png',
                title: 'Transfer',
                onTap: () {
                  _dialogTransfer();
                  // Navigator.pushNamed(context, '/transfer');
                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/logo_exchange.png',
                title: 'Penukaran',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MoneyChangerPage(
                              balance: balance,
                            )),
                  );
                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/logo_penarikan.png',
                title: 'Penarikan',
                onTap: () {
                  _dialogWithdraw();
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => WithdrawAsingPage()));
                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/kurs.png',
                title: 'Info Kurs',
                color: Color(0xffABAFF9),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConverterPage()),
                ),
              ),
              // HomeServiceItem(
              //   iconUrl: 'assets/ic_more.png',
              //   title: 'More',
              //   onTap: () {
              //     showDialog(
              //       context: context,
              //       builder: (context) => const MoreDialog(),
              //     );
              //   },
              // ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLatestTransactions() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Transaksi terakhir',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(
              top: 14,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: BlocProvider(
              create: (context) => TransactionBloc()..add(TransactionGet()),
              child: BlocBuilder<TransactionBloc, TransactionState>(
                builder: (context, state) {
                  if (state is TransactionSuccess) {
                    return Column(
                      children: state.transactions.map((transaction) {
                        return HomeLatestTransactionItem(
                            transaction: transaction);
                      }).toList(),
                    );
                  }

                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            // child: Column(
            //   children: [
            //     HomeLatestTransactionItem(
            //       iconUrl: 'assets/ic_transaction_cat1.png',
            //       title: 'Top Up',
            //       time: 'Yesterday',
            //       value: '+ ${formatCurrency(450000, symbol: ' ')}',
            //     ),
            //     HomeLatestTransactionItem(
            //       iconUrl: 'assets/ic_transaction_cat2.png',
            //       title: 'Cashback',
            //       time: 'Sep 11',
            //       value: '+ ${formatCurrency(22000, symbol: ' ')}',
            //     ),
            //     HomeLatestTransactionItem(
            //       iconUrl: 'assets/ic_transaction_cat3.png',
            //       title: 'Withdraw',
            //       time: 'Sep 2',
            //       value: '+ ${formatCurrency(5000, symbol: ' ')}',
            //     ),
            //     HomeLatestTransactionItem(
            //       iconUrl: 'assets/ic_transaction_cat4.png',
            //       title: 'Transfer',
            //       time: 'Aug 27',
            //       value: '+ ${formatCurrency(123500, symbol: ' ')}',
            //     ),
            //     HomeLatestTransactionItem(
            //       iconUrl: 'assets/ic_transaction_cat5.png',
            //       title: 'Electric',
            //       time: 'Aug 27',
            //       value: '+ ${formatCurrency(12500000, symbol: ' ')}',
            //     ),
            //   ],
            // ),
          ),
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kirim lagi',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          BlocProvider(
            create: (context) => UserBloc()..add(UserGetRecent()),
            child: BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                if (state is UserSuccess) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: state.users.map((user) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TransferAmountPage(
                                  data: TransferFormModel(
                                    sendTo: user.username,
                                  ),
                                ),
                              ),
                            );
                          },
                          child: HomeUserItem(user: user),
                        );
                      }).toList(),
                    ),
                  );
                }

                return Center(
                  child: Container(),
                );
              },
            ),
          ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: [
          //       HomeUserItem(
          //         imageUrl: 'assets/img_friend1.png',
          //         username: 'yuanita',
          //       ),
          //       HomeUserItem(
          //         imageUrl: 'assets/img_friend2.png',
          //         username: 'jani',
          //       ),
          //       HomeUserItem(
          //         imageUrl: 'assets/img_friend3.png',
          //         username: 'urip',
          //       ),
          //       HomeUserItem(
          //         imageUrl: 'assets/img_friend4.png',
          //         username: 'masa',
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget buildFriendlyTips() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        bottom: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tips',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          BlocProvider(
            create: (context) => TipsBloc()..add(TipsGet()),
            child: BlocBuilder<TipsBloc, TipsState>(
              builder: (context, state) {
                if (state is TipsSuccess) {
                  return Wrap(
                    spacing: 17,
                    runSpacing: 18,
                    children: state.tips.map((tip) {
                      return HomeTipsItem(tips: tip);
                    }).toList(),
                  );
                }

                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
          // Wrap(
          //   spacing: 17,
          //   runSpacing: 18,
          //   children: [
          //     HomeTipsItem(
          //       imageUrl: 'assets/img_tips1.png',
          //       title: 'Best tips for using a credit card',
          //       url: '',
          //     ),
          //     HomeTipsItem(
          //       imageUrl: 'assets/img_tips2.png',
          //       title: 'Spot the good pie of finance model',
          //       url: '',
          //     ),
          //     HomeTipsItem(
          //       imageUrl: 'assets/img_tips3.png',
          //       title: 'Great hack to get better advices',
          //       url: '',
          //     ),
          //     HomeTipsItem(
          //       imageUrl: 'assets/img_tips4.png',
          //       title: 'Save more penny buy this instead',
          //       url: '',
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }

  String? scanResultt;

  // Future scanBarcode() async {
  //   String scanResult;

  //   try {
  //     scanResult = await FlutterBarcodeScanner.scanBarcode(
  //       "#ff6666",
  //       "Cancel",
  //       true,
  //       ScanMode.QR,
  //     );
  //   } catch (e) {
  //     scanResult = 'Failed to get platform version';
  //     debugPrint("ini error scan $e");
  //   }

  //   if (!mounted) return;
  //   setState(() {
  //     this.scanResultt = scanResult;
  //   });
  // }
}

class MoreDialog extends StatelessWidget {
  const MoreDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
        height: 326,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: lightBackgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do More With Us',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Wrap(
              spacing: 29,
              runSpacing: 25,
              children: [
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_data.png',
                  title: 'Data',
                  onTap: () {
                    Navigator.pushNamed(context, '/data-provider');
                  },
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_water.png',
                  title: 'Water',
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_stream.png',
                  title: 'Stream',
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_movie.png',
                  title: 'Movie',
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_food.png',
                  title: 'Food',
                  onTap: () {},
                ),
                HomeServiceItem(
                  iconUrl: 'assets/ic_product_travel.png',
                  title: 'Travel',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
