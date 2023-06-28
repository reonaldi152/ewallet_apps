part of 'barcode_bloc.dart';

abstract class BarcodeEvent extends Equatable {
  const BarcodeEvent();

  @override
  List<Object> get props => [];
}

class BarcodeGet extends BarcodeEvent {
  final String username;
  const BarcodeGet(this.username);

  @override
  List<Object> get props => [username];

}
