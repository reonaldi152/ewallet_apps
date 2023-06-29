import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ewallet_apps/models/barcode_model.dart';
import 'package:ewallet_apps/services/barcode_service.dart';
import 'package:flutter/material.dart';

part 'barcode_event.dart';
part 'barcode_state.dart';

class BarcodeBloc extends Bloc<BarcodeEvent, BarcodeState> {
  BarcodeBloc() : super(BarcodeInitial()) {
    on<BarcodeEvent>((event, emit) async {
      if (event is BarcodeGet) {
        try {
          emit(BarcodeLoading());

          final barcode = await BarcodeService().getBarcode(event.username);

          emit(BarcodeSuccess(barcode as BarcodeModel));
        } catch (e) {
          debugPrint(e.toString());

          emit(BarcodeFailed(e.toString()));
        }
      }
    });
  }
}
