import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';

class MoneyChangerPage extends StatefulWidget {
  const MoneyChangerPage({super.key});

  @override
  State<MoneyChangerPage> createState() => _MoneyChangerPageState();
}

class _MoneyChangerPageState extends State<MoneyChangerPage> {
  String _toCurrencyCode = "USD";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Penukaran Uang'),
      ),
      body: Container(
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
                subtitle: Text("100.000"),
              ),
            ),
            SizedBox(height: 15),
            Text("Tukar ke Mata Uang"),
            SizedBox(height: 20),
            GestureDetector(
                onTap: _openCurrencyPickerDialogTo,
                child: toCurrencyItemWidget()),
            SizedBox(height: 38),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border:
                      Border.all(color: Color.fromARGB(255, 160, 166, 247))),
              padding: EdgeInsets.only(left: 8),
              child: ListTile(
                title: Text("USD"),
                subtitle: Text("1.00,59"),
                trailing: Text("US Dollar"),
              ),
            )
          ],
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
        print('Select currency to : ${currency.name}');
        print('Select currency to : ${currency.code}');
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
}
