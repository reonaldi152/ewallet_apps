import 'package:ewallet_apps/shared/helpers.dart';
import 'package:ewallet_apps/ui/pages/pin_withdraw_asing.dart';
import 'package:flutter/material.dart';

import '../widgets/textformfield_outline.dart';

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
  final TextEditingController _narikController = TextEditingController();

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
            ),
            SizedBox(height: 32),
            // Text("Isi Nominal yang ingin ditarik"),
            TextFormFieldOutline(
              title: "Isi Nominal yang ingin ditarik",
              titleStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
              hintText: "Masukkan nominal",
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              controller: _narikController,
              //keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nominal harus di isi';
                }
                /*if (Fzregex.hasMatch(value, FzPattern.phone)) {
                          return 'No. Telepon tidak valid';
                        }*/
                return null;
              },
              // focusedBorder: const OutlineInputBorder(
              //   borderSide: BorderSide(color: AppColor.colorPrimary),
              //   borderRadius: BorderRadius.all(Radius.circular(8.0)),
              // ),
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
                builder: (context) => PinWithdrawAsing(
                  symbols: widget.symbols,
                  country: widget.country,
                  amount: _narikController.text,
                ),
              ),
            );
          },
          child: Text("Selanjutnya"),
        ),
      ),
    );
  }
}
