import 'package:flutter/material.dart';

class ConfirmExchange extends StatefulWidget {
  const ConfirmExchange({super.key});

  @override
  State<ConfirmExchange> createState() => _ConfirmExchangeState();
}

class _ConfirmExchangeState extends State<ConfirmExchange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konfirmasi Penukaran"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Detail Penukaran"),
            Text("")
          ],
        ),
      ),
    );
  }
}