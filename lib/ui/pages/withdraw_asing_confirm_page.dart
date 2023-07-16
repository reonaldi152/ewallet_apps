import 'package:ewallet_apps/ui/pages/success_page.dart';
import 'package:flutter/material.dart';

class WithdrawAsingConfirm extends StatefulWidget {
  const WithdrawAsingConfirm(
      {super.key, this.symbols, this.country, this.codeWithdraw, this.amount});
  final dynamic symbols;
  final dynamic country;
  final dynamic codeWithdraw;
  final dynamic amount;

  @override
  State<WithdrawAsingConfirm> createState() => _WithdrawAsingConfirmState();
}

class _WithdrawAsingConfirmState extends State<WithdrawAsingConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konfirmasi Penarikan Uang Asing"),
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
                Text(
                  widget.symbols.toString(),
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 3),
                Text(
                  widget.country.toString(),
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
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
                  widget.amount.toString(),
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
                        desc: "Penarikan Mata Uang Asing Berhasil",
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
