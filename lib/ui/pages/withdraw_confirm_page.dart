import 'package:ewallet_apps/ui/pages/success_page.dart';
import 'package:flutter/material.dart';

import '../../shared/helpers.dart';

class WithdrawConfirmPage extends StatefulWidget {
  const WithdrawConfirmPage({super.key, this.codeWithdraw, this.amount});
  final dynamic codeWithdraw;
  final dynamic amount;

  @override
  State<WithdrawConfirmPage> createState() => _WithdrawConfirmPageState();
}

class _WithdrawConfirmPageState extends State<WithdrawConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konfirmasi Penarikan Uang"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32),
            Text("Kode Penarikan"),
            SizedBox(height: 10),
            Text(
              widget.codeWithdraw.toString(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 42),
            Row(
              children: [
                Text(
                  "Mata Uang",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                SizedBox(
                  width: 100,
                ),
                // Text(
                //   widget.symbols.toString(),
                //   style: TextStyle(fontWeight: FontWeight.w500),
                // ),
                SizedBox(width: 3),
                // Text(
                //   widget.country.toString(),
                //   style: TextStyle(fontWeight: FontWeight.w500),
                // ),
                // ListTile(
                //   title: Text(widget.symbols.toString()),
                //   subtitle: Text(widget.country.toString()),
                // ),
              ],
            ),
            SizedBox(height: 14),
            Row(
              children: [
                Text(
                  "Jumlah Penarikan",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  formatCurrency(num.parse(widget.amount)).toString(),
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                // ListTile(
                //   title: Text(widget.symbols.toString()),
                //   subtitle: Text(widget.country.toString()),
                // ),
              ],
            ),
            SizedBox(height: 24),
            Container(
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
                      builder: (context) => SuccessPage(
                        desc: "Penarikan Berhasil",
                      ),
                    ),
                  );
                },
                child: Text("Selanjutnya"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
