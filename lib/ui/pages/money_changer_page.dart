import 'package:currency_picker/currency_picker.dart';
import 'package:ewallet_apps/ui/pages/penukaran_amount_page.dart';
import 'package:ewallet_apps/ui/pages/success_page.dart';
import 'package:flutter/material.dart';

import '../../services/exchange_service.dart';
import '../../shared/helpers.dart';

class MoneyChangerPage extends StatefulWidget {
  const MoneyChangerPage({super.key, this.balance});
  final dynamic balance;

  @override
  State<MoneyChangerPage> createState() => _MoneyChangerPageState();
}

class _MoneyChangerPageState extends State<MoneyChangerPage> {
  @override
  void initState() {
    getHistory();
    super.initState();
  }

  List? code;
  List? valuesHistory;
  String _toCurrencyCode = "USD";
  dynamic symbols = "USD";
  dynamic country = "US Dollar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Penukaran Uang'),
      ),
      body: (code == null)
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24),
                  Text(
                    "Saldo Rupiah Anda",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), // radius of 10
                        color: Color(0xffE3E5FE) // green as background color
                        ),
                    width: double.infinity,
                    padding: EdgeInsets.only(),
                    child: ListTile(
                      // leading: CircleAvatar(
                      //     backgroundImage:
                      //         AssetImage('assets/convert.png')),
                      title: Text("Rupiah"),
                      subtitle: Text(
                          formatCurrency(num.parse(widget.balance)).toString()),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text("Tukar ke Mata Uang"),
                  SizedBox(height: 20),
                  GestureDetector(
                      onTap: _openCurrencyPickerDialogTo,
                      child: toCurrencyItemWidget()),
                  SizedBox(height: 38),
                  (code != null)
                      ? Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text("Saldo mata uang asing"))
                      : SizedBox(),
                  (code != null)
                      ? ListView.builder(
                          shrinkWrap: true,
                          itemCount: code?.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 160, 166, 247))),
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
                      : Center(
                          child: CircularProgressIndicator(),
                        ),
                ],
              ),
            ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            backgroundColor: MaterialStatePropertyAll(Color(0xff7176EC)),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PenukaranAmountPage(
                    symbols: symbols,
                    country: country,
                    balance: widget.balance),
              ),
            );
          },
          child: Text("Selanjutnya"),
        ),
      ),
    );
  }

  void _openCurrencyPickerDialogTo() {
    showCurrencyPicker(
      context: context,
      showFlag: true,
      showCurrencyName: true,
      showCurrencyCode: true,
      onSelect: (Currency currency) {
        print('ini name: ${currency.name}');
        print('ini code : ${currency.code}');

        setState(() {
          symbols = currency.code;
          country = currency.name;
        });
        if (mounted) {
          setState(() {
            _toCurrencyCode = currency.code;
          });
        }
      },
    );
  }

  Widget toCurrencyItemWidget() {
    return Row(
      children: <Widget>[
        Icon(Icons.keyboard_arrow_down),
        Text(_toCurrencyCode)
      ],
    );
  }

  void _dialogConfirm() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            content: Text("Apakah anda yakin untuk menukar uang"),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Tidak")),
                  ),

                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue),
                        ),
                        onPressed: () {},
                        child: const Text("Yakin")),
                  ),
                  // ),
                ],
              ),
            ],
          );
        });
  }

  getHistory() async {
    ExchangeService().getHistroy().then(
      (Map<String, dynamic>? value) {
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
