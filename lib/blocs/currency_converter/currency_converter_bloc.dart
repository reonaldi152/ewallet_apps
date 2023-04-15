import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:ewallet_apps/repository/exception/exception.dart';
import 'package:ewallet_apps/repository/repository.dart';
import '../../repository/network/network_data_source.dart';
import './bloc.dart';

class CurrencyConverterBloc
    extends Bloc<CurrencyConverterEvent, CurrencyConverterState> {
  final Repository _repository;
  CurrencyConverterBloc(Repository repository)
      : _repository = repository,
        super(CurrencyConverterLoading()) {
    on<CurrencyConverterEvent>(((event, emit) async {
      if (event is GetConvertCurrency) {
        try {
          emit(CurrencyConverterLoading());

          final response = await NetworkDataSource()
              .getConvertCurrency(from: event.from, to: event.to);

          emit(CurrencyConverterLoaded(response!));
        } on ServerException catch (e) {
          emit(CurrencyConverterFailure(e.message));
        } on SocketException catch (e) {
          print("${e.message},${e.address},${e.port}");
        }
      }
    }));
  }

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
