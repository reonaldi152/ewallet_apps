import 'package:ewallet_apps/shared/helpers.dart';
import 'package:ewallet_apps/ui/pages/pin_transfer_asing.dart';
import 'package:ewallet_apps/ui/pages/pin_withdraw_asing.dart';
import 'package:flutter/material.dart';

import '../../services/withdraw_service.dart';
import '../../shared/theme.dart';
import '../widgets/textformfield_outline.dart';

class TransferAsingDetailPage extends StatefulWidget {
  const TransferAsingDetailPage(
      {super.key, this.balance, this.country, this.symbols, this.username});
  final dynamic symbols;
  final dynamic balance;
  final dynamic country;
  final dynamic username;

  @override
  State<TransferAsingDetailPage> createState() =>
      _TransferAsingDetailPageState();
}

class _TransferAsingDetailPageState extends State<TransferAsingDetailPage> {
  final TextEditingController _transferController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transfer Uang Asing"),
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
              title: "Isi Nominal yang ingin ditransfer",
              titleStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w700),
              hintText: "Masukkan nominal",
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              controller: _transferController,
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
            debugPrint("ini username ${widget.username}");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PinTransferAsing(
                  symbols: widget.symbols,
                  country: widget.country,
                  amount: _transferController.text,
                  username: widget.username,
                ),
              ),
            );
          },
          child: Text("Selanjutnya"),
        ),
      ),
    );
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
            content: Text("Apakah yakin ingin transfer mata uang asing?"),
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
                        },
                        child: const Text("Yakin")),
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
                        },
                        child: const Text("Tidak")),
                  ),
                  // ),
                ],
              ),
            ],
          );
        });
  }
}
