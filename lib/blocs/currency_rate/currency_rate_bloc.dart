import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:ewallet_apps/repository/exception/exception.dart';
import 'package:ewallet_apps/repository/repository.dart';
import './bloc.dart';
import 'package:analyzer/exception/exception.dart';

class CurrencyRateBloc extends Bloc<CurrencyRateEvent, CurrencyRateState> {
  final Repository _repository;
  CurrencyRateBloc(Repository repository)
      : assert(repository != null),
        _repository = repository,
        super(CurrencyRateLoading());
  @override
  CurrencyRateState get initialState => CurrencyRateLoading();

  @override
  Stream<CurrencyRateState> mapEventToState(
    CurrencyRateEvent event,
  ) async* {
    if (event is GetCurrencyRate) {
      yield* _mapOfGetCurrencyRate();
    }
  }

  Stream<CurrencyRateState> _mapOfGetCurrencyRate() async* {
    yield CurrencyRateLoading();
    try {
      final response = await _repository.getCurrencyRate();
      yield CurrencyRateLoaded(response!);
    } on ServerException catch (e) {
      yield CurrencyRateFailure(e.message);
    } on SocketException catch (e) {
      print("${e.message},${e.address},${e.port}");
    }
  }
}
