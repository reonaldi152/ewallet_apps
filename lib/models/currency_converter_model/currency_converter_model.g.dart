// GENERATED CODE - DO NOT MODIFY BY HAND

part of currency_converter_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrencyConverterModel> _$currencyConverterModelSerializer =
    new _$CurrencyConverterModelSerializer();

class _$CurrencyConverterModelSerializer
    implements StructuredSerializer<CurrencyConverterModel> {
  @override
  final Iterable<Type> types = const [
    CurrencyConverterModel,
    _$CurrencyConverterModel
  ];
  @override
  final String wireName = 'CurrencyConverterModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CurrencyConverterModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'result',
      serializers.serialize(object.result,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  CurrencyConverterModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrencyConverterModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'result':
          result.result = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$CurrencyConverterModel extends CurrencyConverterModel {
  @override
  final String date;
  @override
  final double result;

  factory _$CurrencyConverterModel(
          [void Function(CurrencyConverterModelBuilder)? updates]) =>
      (new CurrencyConverterModelBuilder()..update(updates))._build();

  _$CurrencyConverterModel._({required this.date, required this.result})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        date, r'CurrencyConverterModel', 'date');
    BuiltValueNullFieldError.checkNotNull(
        result, r'CurrencyConverterModel', 'result');
  }

  @override
  CurrencyConverterModel rebuild(
          void Function(CurrencyConverterModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrencyConverterModelBuilder toBuilder() =>
      new CurrencyConverterModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrencyConverterModel &&
        date == other.date &&
        result == other.result;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CurrencyConverterModel')
          ..add('date', date)
          ..add('result', result))
        .toString();
  }
}

class CurrencyConverterModelBuilder
    implements Builder<CurrencyConverterModel, CurrencyConverterModelBuilder> {
  _$CurrencyConverterModel? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  double? _result;
  double? get result => _$this._result;
  set result(double? result) => _$this._result = result;

  CurrencyConverterModelBuilder();

  CurrencyConverterModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrencyConverterModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrencyConverterModel;
  }

  @override
  void update(void Function(CurrencyConverterModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CurrencyConverterModel build() => _build();

  _$CurrencyConverterModel _build() {
    final _$result = _$v ??
        new _$CurrencyConverterModel._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'CurrencyConverterModel', 'date'),
            result: BuiltValueNullFieldError.checkNotNull(
                result, r'CurrencyConverterModel', 'result'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
