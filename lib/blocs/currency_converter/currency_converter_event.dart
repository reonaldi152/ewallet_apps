import 'package:equatable/equatable.dart';

abstract class CurrencyConverterEvent extends Equatable {
  const CurrencyConverterEvent();
}

class GetConvertCurrency extends CurrencyConverterEvent {
  final dynamic from;
  final dynamic to;

  GetConvertCurrency({this.from, this.to});

  @override
  // TODO: implement props
  List<Object> get props => [from, to];
}
