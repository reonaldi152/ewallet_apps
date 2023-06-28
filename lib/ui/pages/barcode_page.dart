import 'package:ewallet_apps/blocs/bloc/bloc/barcode_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BarcodePage extends StatefulWidget {
  const BarcodePage({super.key});

  @override
  State<BarcodePage> createState() => _BarcodePageState();
}

class _BarcodePageState extends State<BarcodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil Saya',
        ),
      ),
      body: BlocConsumer<BarcodeBloc, BarcodeState>(
        listener: (contxt, state) {},
        builder: (context, state) {},
      ),
    );
  }
}
