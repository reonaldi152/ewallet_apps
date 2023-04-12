import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:ewallet_apps/repository/exception/exception.dart';
import 'package:ewallet_apps/repository/repository.dart';
import './bloc.dart';

class CurrencyConverterBloc
    extends Bloc<CurrencyConverterEvent, CurrencyConverterState> {
  final Repository _repository;
  CurrencyConverterBloc(Repository repository)
      : assert(repository != null),
        _repository = repository,
        super(CurrencyConverterLoading());

  @override
  CurrencyConverterState get initialState => CurrencyConverterLoading();

  @override
  Stream<CurrencyConverterState> mapEventToState(CurrencyConverterEvent event,
      Emitter<CurrencyConverterState> emit) async* {
    if (event is GetConvertCurrency) {
      yield* _mapOfGetConvertCurrency(event, emit);
    }
  }

  Stream<CurrencyConverterState> _mapOfGetConvertCurrency(
      GetConvertCurrency event, Emitter<CurrencyConverterState> emit) async* {
    emit(CurrencyConverterLoading());
    try {
      final response =
          await _repository.getConvertCurrency(from: event.from, to: event.to);
      emit(CurrencyConverterLoaded(response!));
    } on ServerException catch (e) {
      emit(CurrencyConverterFailure(e.message));
    } on SocketException catch (e) {
      print("${e.message},${e.address},${e.port}");
    }
  }
}
