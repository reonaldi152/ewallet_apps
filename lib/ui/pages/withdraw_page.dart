import 'package:flutter/material.dart';

import '../../shared/helpers.dart';
import '../widgets/textformfield_outline.dart';

class WithdrawPage extends StatefulWidget {
  const WithdrawPage({super.key, this.balance});
  final dynamic balance;

  @override
  State<WithdrawPage> createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawPage> {
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Penarikan Saldo"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 16),
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
                subtitle:
                    Text(formatCurrency(num.parse(widget.balance)).toString()),
              ),
            ),
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
              controller: _amountController,
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
    );
  }
}
