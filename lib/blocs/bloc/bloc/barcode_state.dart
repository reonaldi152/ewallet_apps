part of 'barcode_bloc.dart';

abstract class BarcodeState extends Equatable {
  const BarcodeState();

  @override
  List<Object> get props => [];
}

class BarcodeInitial extends BarcodeState {}

class BarcodeLoading extends BarcodeState {}

class BarcodeFailed extends BarcodeState {
  final String e;
  const BarcodeFailed(this.e);

  @override
  List<Object> get props => [e];
}

class BarcodeSuccess extends BarcodeState {
  final List<BarcodeModel> barcode;
  const BarcodeSuccess(this.barcode);

  @override
  List<Object> get props => [barcode];
}
