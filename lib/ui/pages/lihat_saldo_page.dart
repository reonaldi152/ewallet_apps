import 'package:flutter/material.dart';
import 'package:ewallet_apps/blocs/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../services/exchange_service.dart';
import '../../shared/helpers.dart';
import '../../shared/theme.dart';

class LihatSaldoPage extends StatefulWidget {
  const LihatSaldoPage({super.key});

  @override
  State<LihatSaldoPage> createState() => _LihatSaldoPageState();
}

class _LihatSaldoPageState extends State<LihatSaldoPage> {
  List? code;
  List? valuesHistory;

  @override
  void initState() {
    getHistory();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Saldoku",
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                            Text(
                              formatCurrency(num.parse(state.data.balance))
                                  .toString(),
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
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
              (code != null)
                  ? Container(
                      margin: EdgeInsets.only(bottom: 20, top: 20),
                      child: Text(
                        "Saldo mata uang asing",
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ))
                  : SizedBox(),
              (code != null)
                  ? ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: code?.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: Color.fromARGB(255, 160, 166, 247))),
                          padding: EdgeInsets.only(left: 8),
                          child: ListTile(
                            title: Text(code?[index]),
                            subtitle: Text(
                                valuesHistory![index]['amount'].toString()),
                            trailing: Text(valuesHistory![index]
                                    ['currency_code']
                                .toString()),
                          ),
                        );
                      },
                    )
                  : SizedBox(),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }

  getHistory() async {
    ExchangeService().getHistroy().then(
      (value) {
        debugPrint("ini value history ${value!.values.toList()[0]}");
        setState(() {
          code = value.keys.toList();
          valuesHistory = value.values.toList();
        });

        // setState(() {
        //   data = value;
        // });

        // debugPrint(data![0]);
      },
    );
  }
}
