import 'dart:convert';

import 'package:ewallet_apps/blocs/bloc/bloc/barcode_bloc.dart';
import 'package:ewallet_apps/models/barcode_model.dart';
import 'package:ewallet_apps/services/barcode_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/helpers.dart';

class BarcodePage extends StatefulWidget {
  const BarcodePage({super.key, this.username});
  final dynamic username;

  @override
  State<BarcodePage> createState() => _BarcodePageState();
}

class _BarcodePageState extends State<BarcodePage> {
  @override
  void initState() {
    getBarcode(widget.username);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Barcode',
        ),
      ),
      // body: BlocConsumer<BarcodeBloc, BarcodeState>(
      //   listener: (context, state) {
      //     if (state is BarcodeFailed) {
      //       showCustomSnackbar(context, state.e);
      //     }

      //     if (state is BarcodeInitial) {
      //       Navigator.pushNamedAndRemoveUntil(
      //           context, '/sign-in', (route) => false);
      //     }
      //   },
      //   builder: (context, state) {
      //     if (state is BarcodeSuccess) {
      //       debugPrint("ini state ${state.barcode}");
      //       return Center(
      //         child: Container(
      //           width: 60,
      //           height: 60,
      //           decoration: BoxDecoration(
      //             shape: BoxShape.circle,
      //             image: DecorationImage(
      //               image: NetworkImage(link.toString()),
      //             ),
      //           ),
      //         ),
      //       );
      //     }

      //     return Container();
      //   },
      // ),
      body: (link != null)
          ? Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: Image.network(link.toString()),
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  dynamic link;
  dynamic nameUser;
  getBarcode(username) async {
    BarcodeService().getBarcode(username).then((value) {
      if (value != null) {
        debugPrint(value.link);
        setState(() {
          link = value.link;
          nameUser = value.username;
        });
      }
    });
  }
}
