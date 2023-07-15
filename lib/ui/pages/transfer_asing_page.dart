import 'package:flutter/material.dart';

class TransferAsingPage extends StatefulWidget {
  const TransferAsingPage({super.key});

  @override
  State<TransferAsingPage> createState() => _TransferAsingPageState();
}

class _TransferAsingPageState extends State<TransferAsingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transfer Mata Uang Asing"),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){},
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromARGB(255, 160, 166, 247))),
              padding: EdgeInsets.only(left: 8),
              child: ListTile(
                title: Text("USD"),
                subtitle: Text("1.00,59"),
                trailing: Text("US Dollar"),
              ),
            ),
          );
        },
      ),
    );
  }
}
