import 'package:flutter/material.dart';

class TransferDetailAsingPage extends StatefulWidget {
  const TransferDetailAsingPage({super.key});

  @override
  State<TransferDetailAsingPage> createState() =>
      _TransferDetailAsingPageState();
}

class _TransferDetailAsingPageState extends State<TransferDetailAsingPage> {
  TextEditingController? _transferController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transfer Mata Uang Asing"),
      ),
      body: Container(
        child: Column(
          children: [
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
            ),
            SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.black, width: 1)),
              child: TextField(
                controller: _transferController,
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Masukkan nominal mata uang asing",
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: 25)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
