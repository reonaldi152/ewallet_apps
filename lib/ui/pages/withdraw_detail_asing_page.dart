import 'package:flutter/material.dart';

class WithdrawAsingDetailPage extends StatefulWidget {
  const WithdrawAsingDetailPage(
      {super.key, this.balance, this.country, this.symbols});
  final dynamic symbols;
  final dynamic balance;
  final dynamic country;

  @override
  State<WithdrawAsingDetailPage> createState() =>
      _WithdrawAsingDetailPageState();
}

class _WithdrawAsingDetailPageState extends State<WithdrawAsingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Penarikan Uang Asing"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 16, right: 16, top: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(widget.symbols.toString()),
              subtitle: Text(widget.balance.toString()),
              trailing: Text(widget.country.toString()),
            )
          ],
        ),
      ),
    );
  }
}
