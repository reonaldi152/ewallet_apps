import 'package:ewallet_apps/ui/pages/transfer_detail_asing_page.dart';
import 'package:ewallet_apps/ui/pages/withdraw_detail_asing_page.dart';
import 'package:flutter/material.dart';

import '../../services/exchange_service.dart';

class TransferBalanceAsingPage extends StatefulWidget {
  const TransferBalanceAsingPage({super.key, this.username});
  final dynamic username;

  @override
  State<TransferBalanceAsingPage> createState() =>
      _TransferBalanceAsingPageState();
}

class _TransferBalanceAsingPageState extends State<TransferBalanceAsingPage> {
  @override
  void initState() {
    getHistory();
    super.initState();
  }

  List? code;
  List? valuesHistory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Transfer Uang Asing"),
        ),
        body: (code == null)
            ? const Center(
                child: Text(
                "Anda belum menukarkan uang rupiah ke asing",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ))
            : Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 36),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: code?.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TransferAsingDetailPage(
                              symbols: code?[index].toString(),
                              balance:
                                  valuesHistory![index]['amount'].toString(),
                              country: valuesHistory![index]['currency_code']
                                  .toString(),
                              username: widget.username,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: Color.fromARGB(255, 160, 166, 247))),
                        padding: EdgeInsets.only(left: 8),
                        child: ListTile(
                          title: Text(code?[index]),
                          subtitle:
                              Text(valuesHistory![index]['amount'].toString()),
                          trailing: Text(valuesHistory![index]['currency_code']
                              .toString()),
                        ),
                      ),
                    );
                  },
                ),
              ));
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
