// GENERATED CODE - DO NOT MODIFY BY HAND

part of currency_rete_model_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrencyRateModelResult> _$currencyRateModelResultSerializer =
    new _$CurrencyRateModelResultSerializer();

class _$CurrencyRateModelResultSerializer
    implements StructuredSerializer<CurrencyRateModelResult> {
  @override
  final Iterable<Type> types = const [
    CurrencyRateModelResult,
    _$CurrencyRateModelResult
  ];
  @override
  final String wireName = 'CurrencyRateModelResult';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CurrencyRateModelResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'base',
      serializers.serialize(object.base, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'rates',
      serializers.serialize(object.rates, specifiedType: const FullType(Rates)),
    ];

    return result;
  }

  @override
  CurrencyRateModelResult deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrencyRateModelResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'base':
          result.base = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rates':
          result.rates.replace(serializers.deserialize(value,
              specifiedType: const FullType(Rates))! as Rates);
          break;
      }
    }

    return result.build();
  }
}

class _$CurrencyRateModelResult extends CurrencyRateModelResult {
  @override
  final String base;
  @override
  final String date;
  @override
  final Rates rates;

  factory _$CurrencyRateModelResult(
          [void Function(CurrencyRateModelResultBuilder)? updates]) =>
      (new CurrencyRateModelResultBuilder()..update(updates))._build();

  _$CurrencyRateModelResult._(
      {required this.base, required this.date, required this.rates})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        base, r'CurrencyRateModelResult', 'base');
    BuiltValueNullFieldError.checkNotNull(
        date, r'CurrencyRateModelResult', 'date');
    BuiltValueNullFieldError.checkNotNull(
        rates, r'CurrencyRateModelResult', 'rates');
  }

  @override
  CurrencyRateModelResult rebuild(
          void Function(CurrencyRateModelResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrencyRateModelResultBuilder toBuilder() =>
      new CurrencyRateModelResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrencyRateModelResult &&
        base == other.base &&
        date == other.date &&
        rates == other.rates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, base.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, rates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CurrencyRateModelResult')
          ..add('base', base)
          ..add('date', date)
          ..add('rates', rates))
        .toString();
  }
}

class CurrencyRateModelResultBuilder
    implements
        Builder<CurrencyRateModelResult, CurrencyRateModelResultBuilder> {
  _$CurrencyRateModelResult? _$v;

  String? _base;
  String? get base => _$this._base;
  set base(String? base) => _$this._base = base;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  RatesBuilder? _rates;
  RatesBuilder get rates => _$this._rates ??= new RatesBuilder();
  set rates(RatesBuilder? rates) => _$this._rates = rates;

  CurrencyRateModelResultBuilder();

  CurrencyRateModelResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _base = $v.base;
      _date = $v.date;
      _rates = $v.rates.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrencyRateModelResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrencyRateModelResult;
  }

  @override
  void update(void Function(CurrencyRateModelResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CurrencyRateModelResult build() => _build();

  _$CurrencyRateModelResult _build() {
    _$CurrencyRateModelResult _$result;
    try {
      _$result = _$v ??
          new _$CurrencyRateModelResult._(
              base: BuiltValueNullFieldError.checkNotNull(
                  base, r'CurrencyRateModelResult', 'base'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'CurrencyRateModelResult', 'date'),
              rates: rates.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rates';
        rates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CurrencyRateModelResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
