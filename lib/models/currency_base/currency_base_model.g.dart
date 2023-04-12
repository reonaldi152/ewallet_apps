// GENERATED CODE - DO NOT MODIFY BY HAND

part of currency_base_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrencyBaseModel> _$currencyBaseModelSerializer =
    new _$CurrencyBaseModelSerializer();

class _$CurrencyBaseModelSerializer
    implements StructuredSerializer<CurrencyBaseModel> {
  @override
  final Iterable<Type> types = const [CurrencyBaseModel, _$CurrencyBaseModel];
  @override
  final String wireName = 'CurrencyBaseModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CurrencyBaseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'base',
      serializers.serialize(object.base, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'rates',
      serializers.serialize(object.rates,
          specifiedType: const FullType(CurrencyBaseData)),
    ];

    return result;
  }

  @override
  CurrencyBaseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrencyBaseModelBuilder();

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
                  specifiedType: const FullType(CurrencyBaseData))!
              as CurrencyBaseData);
          break;
      }
    }

    return result.build();
  }
}

class _$CurrencyBaseModel extends CurrencyBaseModel {
  @override
  final String base;
  @override
  final String date;
  @override
  final CurrencyBaseData rates;

  factory _$CurrencyBaseModel(
          [void Function(CurrencyBaseModelBuilder)? updates]) =>
      (new CurrencyBaseModelBuilder()..update(updates))._build();

  _$CurrencyBaseModel._(
      {required this.base, required this.date, required this.rates})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(base, r'CurrencyBaseModel', 'base');
    BuiltValueNullFieldError.checkNotNull(date, r'CurrencyBaseModel', 'date');
    BuiltValueNullFieldError.checkNotNull(rates, r'CurrencyBaseModel', 'rates');
  }

  @override
  CurrencyBaseModel rebuild(void Function(CurrencyBaseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrencyBaseModelBuilder toBuilder() =>
      new CurrencyBaseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrencyBaseModel &&
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
    return (newBuiltValueToStringHelper(r'CurrencyBaseModel')
          ..add('base', base)
          ..add('date', date)
          ..add('rates', rates))
        .toString();
  }
}

class CurrencyBaseModelBuilder
    implements Builder<CurrencyBaseModel, CurrencyBaseModelBuilder> {
  _$CurrencyBaseModel? _$v;

  String? _base;
  String? get base => _$this._base;
  set base(String? base) => _$this._base = base;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  CurrencyBaseDataBuilder? _rates;
  CurrencyBaseDataBuilder get rates =>
      _$this._rates ??= new CurrencyBaseDataBuilder();
  set rates(CurrencyBaseDataBuilder? rates) => _$this._rates = rates;

  CurrencyBaseModelBuilder();

  CurrencyBaseModelBuilder get _$this {
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
  void replace(CurrencyBaseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrencyBaseModel;
  }

  @override
  void update(void Function(CurrencyBaseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CurrencyBaseModel build() => _build();

  _$CurrencyBaseModel _build() {
    _$CurrencyBaseModel _$result;
    try {
      _$result = _$v ??
          new _$CurrencyBaseModel._(
              base: BuiltValueNullFieldError.checkNotNull(
                  base, r'CurrencyBaseModel', 'base'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'CurrencyBaseModel', 'date'),
              rates: rates.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rates';
        rates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CurrencyBaseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
