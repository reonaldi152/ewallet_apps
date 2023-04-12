// GENERATED CODE - DO NOT MODIFY BY HAND

part of currency_base_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrencyBaseData> _$currencyBaseDataSerializer =
    new _$CurrencyBaseDataSerializer();

class _$CurrencyBaseDataSerializer
    implements StructuredSerializer<CurrencyBaseData> {
  @override
  final Iterable<Type> types = const [CurrencyBaseData, _$CurrencyBaseData];
  @override
  final String wireName = 'CurrencyBaseData';

  @override
  Iterable<Object?> serialize(Serializers serializers, CurrencyBaseData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'AED',
      serializers.serialize(object.AED, specifiedType: const FullType(double)),
      'AFN',
      serializers.serialize(object.AFN, specifiedType: const FullType(double)),
      'ALL',
      serializers.serialize(object.ALL, specifiedType: const FullType(double)),
      'AMD',
      serializers.serialize(object.AMD, specifiedType: const FullType(double)),
      'ANG',
      serializers.serialize(object.ANG, specifiedType: const FullType(double)),
      'AOA',
      serializers.serialize(object.AOA, specifiedType: const FullType(double)),
      'ARS',
      serializers.serialize(object.ARS, specifiedType: const FullType(double)),
      'AUD',
      serializers.serialize(object.AUD, specifiedType: const FullType(double)),
      'AWG',
      serializers.serialize(object.AWG, specifiedType: const FullType(double)),
      'AZN',
      serializers.serialize(object.AZN, specifiedType: const FullType(double)),
      'BAM',
      serializers.serialize(object.BAM, specifiedType: const FullType(double)),
      'BBD',
      serializers.serialize(object.BBD, specifiedType: const FullType(double)),
      'BDT',
      serializers.serialize(object.BDT, specifiedType: const FullType(double)),
      'BGN',
      serializers.serialize(object.BGN, specifiedType: const FullType(double)),
      'BHD',
      serializers.serialize(object.BHD, specifiedType: const FullType(double)),
      'BIF',
      serializers.serialize(object.BIF, specifiedType: const FullType(double)),
      'BMD',
      serializers.serialize(object.BMD, specifiedType: const FullType(double)),
      'BND',
      serializers.serialize(object.BND, specifiedType: const FullType(double)),
      'BOB',
      serializers.serialize(object.BOB, specifiedType: const FullType(double)),
      'BRL',
      serializers.serialize(object.BRL, specifiedType: const FullType(double)),
      'BSD',
      serializers.serialize(object.BSD, specifiedType: const FullType(double)),
      'BTC',
      serializers.serialize(object.BTC, specifiedType: const FullType(double)),
      'BTN',
      serializers.serialize(object.BTN, specifiedType: const FullType(double)),
      'BWP',
      serializers.serialize(object.BWP, specifiedType: const FullType(double)),
      'BYN',
      serializers.serialize(object.BYN, specifiedType: const FullType(double)),
      'BZD',
      serializers.serialize(object.BZD, specifiedType: const FullType(double)),
      'CAD',
      serializers.serialize(object.CAD, specifiedType: const FullType(double)),
      'CDF',
      serializers.serialize(object.CDF, specifiedType: const FullType(double)),
      'CHF',
      serializers.serialize(object.CHF, specifiedType: const FullType(double)),
      'CLF',
      serializers.serialize(object.CLF, specifiedType: const FullType(double)),
      'CLP',
      serializers.serialize(object.CLP, specifiedType: const FullType(double)),
      'CNH',
      serializers.serialize(object.CNH, specifiedType: const FullType(double)),
      'CNY',
      serializers.serialize(object.CNY, specifiedType: const FullType(double)),
      'COP',
      serializers.serialize(object.COP, specifiedType: const FullType(double)),
      'CRC',
      serializers.serialize(object.CRC, specifiedType: const FullType(double)),
      'CUC',
      serializers.serialize(object.CUC, specifiedType: const FullType(double)),
      'CUP',
      serializers.serialize(object.CUP, specifiedType: const FullType(double)),
      'CVE',
      serializers.serialize(object.CVE, specifiedType: const FullType(double)),
      'CZK',
      serializers.serialize(object.CZK, specifiedType: const FullType(double)),
      'DJF',
      serializers.serialize(object.DJF, specifiedType: const FullType(double)),
      'DKK',
      serializers.serialize(object.DKK, specifiedType: const FullType(double)),
      'DOP',
      serializers.serialize(object.DOP, specifiedType: const FullType(double)),
      'DZD',
      serializers.serialize(object.DZD, specifiedType: const FullType(double)),
      'EGP',
      serializers.serialize(object.EGP, specifiedType: const FullType(double)),
      'ERN',
      serializers.serialize(object.ERN, specifiedType: const FullType(double)),
      'ETB',
      serializers.serialize(object.ETB, specifiedType: const FullType(double)),
      'EUR',
      serializers.serialize(object.EUR, specifiedType: const FullType(double)),
      'FJD',
      serializers.serialize(object.FJD, specifiedType: const FullType(double)),
      'FKP',
      serializers.serialize(object.FKP, specifiedType: const FullType(double)),
      'GBP',
      serializers.serialize(object.GBP, specifiedType: const FullType(double)),
      'GEL',
      serializers.serialize(object.GEL, specifiedType: const FullType(double)),
      'GGP',
      serializers.serialize(object.GGP, specifiedType: const FullType(double)),
      'GHS',
      serializers.serialize(object.GHS, specifiedType: const FullType(double)),
      'GIP',
      serializers.serialize(object.GIP, specifiedType: const FullType(double)),
      'GMD',
      serializers.serialize(object.GMD, specifiedType: const FullType(double)),
      'GNF',
      serializers.serialize(object.GNF, specifiedType: const FullType(double)),
      'GTQ',
      serializers.serialize(object.GTQ, specifiedType: const FullType(double)),
      'GYD',
      serializers.serialize(object.GYD, specifiedType: const FullType(double)),
      'HKD',
      serializers.serialize(object.HKD, specifiedType: const FullType(double)),
      'HNL',
      serializers.serialize(object.HNL, specifiedType: const FullType(double)),
      'HRK',
      serializers.serialize(object.HRK, specifiedType: const FullType(double)),
      'HTG',
      serializers.serialize(object.HTG, specifiedType: const FullType(double)),
      'HUF',
      serializers.serialize(object.HUF, specifiedType: const FullType(double)),
      'IDR',
      serializers.serialize(object.IDR, specifiedType: const FullType(double)),
      'ILS',
      serializers.serialize(object.ILS, specifiedType: const FullType(double)),
      'IMP',
      serializers.serialize(object.IMP, specifiedType: const FullType(double)),
      'INR',
      serializers.serialize(object.INR, specifiedType: const FullType(double)),
      'IQD',
      serializers.serialize(object.IQD, specifiedType: const FullType(double)),
      'IRR',
      serializers.serialize(object.IRR, specifiedType: const FullType(double)),
      'ISK',
      serializers.serialize(object.ISK, specifiedType: const FullType(double)),
      'JEP',
      serializers.serialize(object.JEP, specifiedType: const FullType(double)),
      'JMD',
      serializers.serialize(object.JMD, specifiedType: const FullType(double)),
      'JOD',
      serializers.serialize(object.JOD, specifiedType: const FullType(double)),
      'JPY',
      serializers.serialize(object.JPY, specifiedType: const FullType(double)),
      'KES',
      serializers.serialize(object.KES, specifiedType: const FullType(double)),
      'KGS',
      serializers.serialize(object.KGS, specifiedType: const FullType(double)),
      'KHR',
      serializers.serialize(object.KHR, specifiedType: const FullType(double)),
      'KMF',
      serializers.serialize(object.KMF, specifiedType: const FullType(double)),
      'KPW',
      serializers.serialize(object.KPW, specifiedType: const FullType(double)),
      'KRW',
      serializers.serialize(object.KRW, specifiedType: const FullType(double)),
      'KWD',
      serializers.serialize(object.KWD, specifiedType: const FullType(double)),
      'KYD',
      serializers.serialize(object.KYD, specifiedType: const FullType(double)),
      'KZT',
      serializers.serialize(object.KZT, specifiedType: const FullType(double)),
      'LAK',
      serializers.serialize(object.LAK, specifiedType: const FullType(double)),
      'LBP',
      serializers.serialize(object.LBP, specifiedType: const FullType(double)),
      'LKR',
      serializers.serialize(object.LKR, specifiedType: const FullType(double)),
      'LRD',
      serializers.serialize(object.LRD, specifiedType: const FullType(double)),
      'LSL',
      serializers.serialize(object.LSL, specifiedType: const FullType(double)),
      'LYD',
      serializers.serialize(object.LYD, specifiedType: const FullType(double)),
      'MAD',
      serializers.serialize(object.MAD, specifiedType: const FullType(double)),
      'MDL',
      serializers.serialize(object.MDL, specifiedType: const FullType(double)),
      'MGA',
      serializers.serialize(object.MGA, specifiedType: const FullType(double)),
      'MKD',
      serializers.serialize(object.MKD, specifiedType: const FullType(double)),
      'MMK',
      serializers.serialize(object.MMK, specifiedType: const FullType(double)),
      'MNT',
      serializers.serialize(object.MNT, specifiedType: const FullType(double)),
      'MOP',
      serializers.serialize(object.MOP, specifiedType: const FullType(double)),
      'MRO',
      serializers.serialize(object.MRO, specifiedType: const FullType(double)),
      'MRU',
      serializers.serialize(object.MRU, specifiedType: const FullType(double)),
      'MUR',
      serializers.serialize(object.MUR, specifiedType: const FullType(double)),
      'MVR',
      serializers.serialize(object.MVR, specifiedType: const FullType(double)),
      'MWK',
      serializers.serialize(object.MWK, specifiedType: const FullType(double)),
      'MXN',
      serializers.serialize(object.MXN, specifiedType: const FullType(double)),
      'MYR',
      serializers.serialize(object.MYR, specifiedType: const FullType(double)),
      'MZN',
      serializers.serialize(object.MZN, specifiedType: const FullType(double)),
      'NAD',
      serializers.serialize(object.NAD, specifiedType: const FullType(double)),
      'NGN',
      serializers.serialize(object.NGN, specifiedType: const FullType(double)),
      'NIO',
      serializers.serialize(object.NIO, specifiedType: const FullType(double)),
      'NOK',
      serializers.serialize(object.NOK, specifiedType: const FullType(double)),
      'NPR',
      serializers.serialize(object.NPR, specifiedType: const FullType(double)),
      'NZD',
      serializers.serialize(object.NZD, specifiedType: const FullType(double)),
      'OMR',
      serializers.serialize(object.OMR, specifiedType: const FullType(double)),
      'PAB',
      serializers.serialize(object.PAB, specifiedType: const FullType(double)),
      'PEN',
      serializers.serialize(object.PEN, specifiedType: const FullType(double)),
      'PGK',
      serializers.serialize(object.PGK, specifiedType: const FullType(double)),
      'PHP',
      serializers.serialize(object.PHP, specifiedType: const FullType(double)),
      'PKR',
      serializers.serialize(object.PKR, specifiedType: const FullType(double)),
      'PLN',
      serializers.serialize(object.PLN, specifiedType: const FullType(double)),
      'PYG',
      serializers.serialize(object.PYG, specifiedType: const FullType(double)),
      'QAR',
      serializers.serialize(object.QAR, specifiedType: const FullType(double)),
      'RON',
      serializers.serialize(object.RON, specifiedType: const FullType(double)),
      'RSD',
      serializers.serialize(object.RSD, specifiedType: const FullType(double)),
      'RUB',
      serializers.serialize(object.RUB, specifiedType: const FullType(double)),
      'RWF',
      serializers.serialize(object.RWF, specifiedType: const FullType(double)),
      'SAR',
      serializers.serialize(object.SAR, specifiedType: const FullType(double)),
      'SBD',
      serializers.serialize(object.SBD, specifiedType: const FullType(double)),
      'SCR',
      serializers.serialize(object.SCR, specifiedType: const FullType(double)),
      'SDG',
      serializers.serialize(object.SDG, specifiedType: const FullType(double)),
      'SEK',
      serializers.serialize(object.SEK, specifiedType: const FullType(double)),
      'SGD',
      serializers.serialize(object.SGD, specifiedType: const FullType(double)),
      'SHP',
      serializers.serialize(object.SHP, specifiedType: const FullType(double)),
      'SLL',
      serializers.serialize(object.SLL, specifiedType: const FullType(double)),
      'SOS',
      serializers.serialize(object.SOS, specifiedType: const FullType(double)),
      'SRD',
      serializers.serialize(object.SRD, specifiedType: const FullType(double)),
      'SSP',
      serializers.serialize(object.SSP, specifiedType: const FullType(double)),
      'STD',
      serializers.serialize(object.STD, specifiedType: const FullType(double)),
      'STN',
      serializers.serialize(object.STN, specifiedType: const FullType(double)),
      'SVC',
      serializers.serialize(object.SVC, specifiedType: const FullType(double)),
      'SYP',
      serializers.serialize(object.SYP, specifiedType: const FullType(double)),
      'SZL',
      serializers.serialize(object.SZL, specifiedType: const FullType(double)),
      'THB',
      serializers.serialize(object.THB, specifiedType: const FullType(double)),
      'TJS',
      serializers.serialize(object.TJS, specifiedType: const FullType(double)),
      'TMT',
      serializers.serialize(object.TMT, specifiedType: const FullType(double)),
      'TND',
      serializers.serialize(object.TND, specifiedType: const FullType(double)),
      'TOP',
      serializers.serialize(object.TOP, specifiedType: const FullType(double)),
      'TRY',
      serializers.serialize(object.TRY, specifiedType: const FullType(double)),
      'TTD',
      serializers.serialize(object.TTD, specifiedType: const FullType(double)),
      'TWD',
      serializers.serialize(object.TWD, specifiedType: const FullType(double)),
      'TZS',
      serializers.serialize(object.TZS, specifiedType: const FullType(double)),
      'UAH',
      serializers.serialize(object.UAH, specifiedType: const FullType(double)),
      'UGX',
      serializers.serialize(object.UGX, specifiedType: const FullType(double)),
      'USD',
      serializers.serialize(object.USD, specifiedType: const FullType(double)),
      'UYU',
      serializers.serialize(object.UYU, specifiedType: const FullType(double)),
      'UZS',
      serializers.serialize(object.UZS, specifiedType: const FullType(double)),
      'VEF',
      serializers.serialize(object.VEF, specifiedType: const FullType(double)),
      'VES',
      serializers.serialize(object.VES, specifiedType: const FullType(double)),
      'VND',
      serializers.serialize(object.VND, specifiedType: const FullType(double)),
      'VUV',
      serializers.serialize(object.VUV, specifiedType: const FullType(double)),
      'WST',
      serializers.serialize(object.WST, specifiedType: const FullType(double)),
      'XAF',
      serializers.serialize(object.XAF, specifiedType: const FullType(double)),
      'XAG',
      serializers.serialize(object.XAG, specifiedType: const FullType(double)),
      'XAU',
      serializers.serialize(object.XAU, specifiedType: const FullType(double)),
      'XCD',
      serializers.serialize(object.XCD, specifiedType: const FullType(double)),
      'XDR',
      serializers.serialize(object.XDR, specifiedType: const FullType(double)),
      'XOF',
      serializers.serialize(object.XOF, specifiedType: const FullType(double)),
      'XPD',
      serializers.serialize(object.XPD, specifiedType: const FullType(double)),
      'XPF',
      serializers.serialize(object.XPF, specifiedType: const FullType(double)),
      'XPT',
      serializers.serialize(object.XPT, specifiedType: const FullType(double)),
      'YER',
      serializers.serialize(object.YER, specifiedType: const FullType(double)),
      'ZAR',
      serializers.serialize(object.ZAR, specifiedType: const FullType(double)),
      'ZMW',
      serializers.serialize(object.ZMW, specifiedType: const FullType(double)),
      'ZWL',
      serializers.serialize(object.ZWL, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  CurrencyBaseData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrencyBaseDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'AED':
          result.AED = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'AFN':
          result.AFN = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ALL':
          result.ALL = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'AMD':
          result.AMD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ANG':
          result.ANG = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'AOA':
          result.AOA = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ARS':
          result.ARS = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'AUD':
          result.AUD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'AWG':
          result.AWG = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'AZN':
          result.AZN = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BAM':
          result.BAM = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BBD':
          result.BBD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BDT':
          result.BDT = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BGN':
          result.BGN = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BHD':
          result.BHD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BIF':
          result.BIF = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BMD':
          result.BMD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BND':
          result.BND = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BOB':
          result.BOB = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BRL':
          result.BRL = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BSD':
          result.BSD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BTC':
          result.BTC = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BTN':
          result.BTN = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BWP':
          result.BWP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BYN':
          result.BYN = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'BZD':
          result.BZD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'CAD':
          result.CAD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'CDF':
          result.CDF = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'CHF':
          result.CHF = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'CLF':
          result.CLF = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'CLP':
          result.CLP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'CNH':
          result.CNH = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'CNY':
          result.CNY = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'COP':
          result.COP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'CRC':
          result.CRC = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'CUC':
          result.CUC = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'CUP':
          result.CUP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'CVE':
          result.CVE = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'CZK':
          result.CZK = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'DJF':
          result.DJF = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'DKK':
          result.DKK = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'DOP':
          result.DOP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'DZD':
          result.DZD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'EGP':
          result.EGP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ERN':
          result.ERN = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ETB':
          result.ETB = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'EUR':
          result.EUR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'FJD':
          result.FJD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'FKP':
          result.FKP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'GBP':
          result.GBP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'GEL':
          result.GEL = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'GGP':
          result.GGP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'GHS':
          result.GHS = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'GIP':
          result.GIP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'GMD':
          result.GMD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'GNF':
          result.GNF = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'GTQ':
          result.GTQ = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'GYD':
          result.GYD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'HKD':
          result.HKD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'HNL':
          result.HNL = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'HRK':
          result.HRK = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'HTG':
          result.HTG = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'HUF':
          result.HUF = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'IDR':
          result.IDR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ILS':
          result.ILS = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'IMP':
          result.IMP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'INR':
          result.INR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'IQD':
          result.IQD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'IRR':
          result.IRR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ISK':
          result.ISK = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'JEP':
          result.JEP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'JMD':
          result.JMD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'JOD':
          result.JOD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'JPY':
          result.JPY = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'KES':
          result.KES = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'KGS':
          result.KGS = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'KHR':
          result.KHR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'KMF':
          result.KMF = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'KPW':
          result.KPW = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'KRW':
          result.KRW = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'KWD':
          result.KWD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'KYD':
          result.KYD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'KZT':
          result.KZT = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'LAK':
          result.LAK = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'LBP':
          result.LBP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'LKR':
          result.LKR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'LRD':
          result.LRD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'LSL':
          result.LSL = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'LYD':
          result.LYD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'MAD':
          result.MAD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'MDL':
          result.MDL = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'MGA':
          result.MGA = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'MKD':
          result.MKD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'MMK':
          result.MMK = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'MNT':
          result.MNT = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'MOP':
          result.MOP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'MRO':
          result.MRO = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'MRU':
          result.MRU = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'MUR':
          result.MUR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'MVR':
          result.MVR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'MWK':
          result.MWK = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'MXN':
          result.MXN = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'MYR':
          result.MYR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'MZN':
          result.MZN = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'NAD':
          result.NAD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'NGN':
          result.NGN = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'NIO':
          result.NIO = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'NOK':
          result.NOK = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'NPR':
          result.NPR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'NZD':
          result.NZD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'OMR':
          result.OMR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'PAB':
          result.PAB = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'PEN':
          result.PEN = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'PGK':
          result.PGK = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'PHP':
          result.PHP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'PKR':
          result.PKR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'PLN':
          result.PLN = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'PYG':
          result.PYG = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'QAR':
          result.QAR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'RON':
          result.RON = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'RSD':
          result.RSD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'RUB':
          result.RUB = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'RWF':
          result.RWF = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'SAR':
          result.SAR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'SBD':
          result.SBD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'SCR':
          result.SCR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'SDG':
          result.SDG = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'SEK':
          result.SEK = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'SGD':
          result.SGD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'SHP':
          result.SHP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'SLL':
          result.SLL = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'SOS':
          result.SOS = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'SRD':
          result.SRD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'SSP':
          result.SSP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'STD':
          result.STD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'STN':
          result.STN = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'SVC':
          result.SVC = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'SYP':
          result.SYP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'SZL':
          result.SZL = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'THB':
          result.THB = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'TJS':
          result.TJS = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'TMT':
          result.TMT = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'TND':
          result.TND = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'TOP':
          result.TOP = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'TRY':
          result.TRY = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'TTD':
          result.TTD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'TWD':
          result.TWD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'TZS':
          result.TZS = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'UAH':
          result.UAH = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'UGX':
          result.UGX = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'USD':
          result.USD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'UYU':
          result.UYU = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'UZS':
          result.UZS = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'VEF':
          result.VEF = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'VES':
          result.VES = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'VND':
          result.VND = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'VUV':
          result.VUV = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'WST':
          result.WST = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'XAF':
          result.XAF = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'XAG':
          result.XAG = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'XAU':
          result.XAU = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'XCD':
          result.XCD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'XDR':
          result.XDR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'XOF':
          result.XOF = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'XPD':
          result.XPD = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'XPF':
          result.XPF = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'XPT':
          result.XPT = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'YER':
          result.YER = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ZAR':
          result.ZAR = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ZMW':
          result.ZMW = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ZWL':
          result.ZWL = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$CurrencyBaseData extends CurrencyBaseData {
  @override
  final double AED;
  @override
  final double AFN;
  @override
  final double ALL;
  @override
  final double AMD;
  @override
  final double ANG;
  @override
  final double AOA;
  @override
  final double ARS;
  @override
  final double AUD;
  @override
  final double AWG;
  @override
  final double AZN;
  @override
  final double BAM;
  @override
  final double BBD;
  @override
  final double BDT;
  @override
  final double BGN;
  @override
  final double BHD;
  @override
  final double BIF;
  @override
  final double BMD;
  @override
  final double BND;
  @override
  final double BOB;
  @override
  final double BRL;
  @override
  final double BSD;
  @override
  final double BTC;
  @override
  final double BTN;
  @override
  final double BWP;
  @override
  final double BYN;
  @override
  final double BZD;
  @override
  final double CAD;
  @override
  final double CDF;
  @override
  final double CHF;
  @override
  final double CLF;
  @override
  final double CLP;
  @override
  final double CNH;
  @override
  final double CNY;
  @override
  final double COP;
  @override
  final double CRC;
  @override
  final double CUC;
  @override
  final double CUP;
  @override
  final double CVE;
  @override
  final double CZK;
  @override
  final double DJF;
  @override
  final double DKK;
  @override
  final double DOP;
  @override
  final double DZD;
  @override
  final double EGP;
  @override
  final double ERN;
  @override
  final double ETB;
  @override
  final double EUR;
  @override
  final double FJD;
  @override
  final double FKP;
  @override
  final double GBP;
  @override
  final double GEL;
  @override
  final double GGP;
  @override
  final double GHS;
  @override
  final double GIP;
  @override
  final double GMD;
  @override
  final double GNF;
  @override
  final double GTQ;
  @override
  final double GYD;
  @override
  final double HKD;
  @override
  final double HNL;
  @override
  final double HRK;
  @override
  final double HTG;
  @override
  final double HUF;
  @override
  final double IDR;
  @override
  final double ILS;
  @override
  final double IMP;
  @override
  final double INR;
  @override
  final double IQD;
  @override
  final double IRR;
  @override
  final double ISK;
  @override
  final double JEP;
  @override
  final double JMD;
  @override
  final double JOD;
  @override
  final double JPY;
  @override
  final double KES;
  @override
  final double KGS;
  @override
  final double KHR;
  @override
  final double KMF;
  @override
  final double KPW;
  @override
  final double KRW;
  @override
  final double KWD;
  @override
  final double KYD;
  @override
  final double KZT;
  @override
  final double LAK;
  @override
  final double LBP;
  @override
  final double LKR;
  @override
  final double LRD;
  @override
  final double LSL;
  @override
  final double LYD;
  @override
  final double MAD;
  @override
  final double MDL;
  @override
  final double MGA;
  @override
  final double MKD;
  @override
  final double MMK;
  @override
  final double MNT;
  @override
  final double MOP;
  @override
  final double MRO;
  @override
  final double MRU;
  @override
  final double MUR;
  @override
  final double MVR;
  @override
  final double MWK;
  @override
  final double MXN;
  @override
  final double MYR;
  @override
  final double MZN;
  @override
  final double NAD;
  @override
  final double NGN;
  @override
  final double NIO;
  @override
  final double NOK;
  @override
  final double NPR;
  @override
  final double NZD;
  @override
  final double OMR;
  @override
  final double PAB;
  @override
  final double PEN;
  @override
  final double PGK;
  @override
  final double PHP;
  @override
  final double PKR;
  @override
  final double PLN;
  @override
  final double PYG;
  @override
  final double QAR;
  @override
  final double RON;
  @override
  final double RSD;
  @override
  final double RUB;
  @override
  final double RWF;
  @override
  final double SAR;
  @override
  final double SBD;
  @override
  final double SCR;
  @override
  final double SDG;
  @override
  final double SEK;
  @override
  final double SGD;
  @override
  final double SHP;
  @override
  final double SLL;
  @override
  final double SOS;
  @override
  final double SRD;
  @override
  final double SSP;
  @override
  final double STD;
  @override
  final double STN;
  @override
  final double SVC;
  @override
  final double SYP;
  @override
  final double SZL;
  @override
  final double THB;
  @override
  final double TJS;
  @override
  final double TMT;
  @override
  final double TND;
  @override
  final double TOP;
  @override
  final double TRY;
  @override
  final double TTD;
  @override
  final double TWD;
  @override
  final double TZS;
  @override
  final double UAH;
  @override
  final double UGX;
  @override
  final double USD;
  @override
  final double UYU;
  @override
  final double UZS;
  @override
  final double VEF;
  @override
  final double VES;
  @override
  final double VND;
  @override
  final double VUV;
  @override
  final double WST;
  @override
  final double XAF;
  @override
  final double XAG;
  @override
  final double XAU;
  @override
  final double XCD;
  @override
  final double XDR;
  @override
  final double XOF;
  @override
  final double XPD;
  @override
  final double XPF;
  @override
  final double XPT;
  @override
  final double YER;
  @override
  final double ZAR;
  @override
  final double ZMW;
  @override
  final double ZWL;

  factory _$CurrencyBaseData(
          [void Function(CurrencyBaseDataBuilder)? updates]) =>
      (new CurrencyBaseDataBuilder()..update(updates))._build();

  _$CurrencyBaseData._(
      {required this.AED,
      required this.AFN,
      required this.ALL,
      required this.AMD,
      required this.ANG,
      required this.AOA,
      required this.ARS,
      required this.AUD,
      required this.AWG,
      required this.AZN,
      required this.BAM,
      required this.BBD,
      required this.BDT,
      required this.BGN,
      required this.BHD,
      required this.BIF,
      required this.BMD,
      required this.BND,
      required this.BOB,
      required this.BRL,
      required this.BSD,
      required this.BTC,
      required this.BTN,
      required this.BWP,
      required this.BYN,
      required this.BZD,
      required this.CAD,
      required this.CDF,
      required this.CHF,
      required this.CLF,
      required this.CLP,
      required this.CNH,
      required this.CNY,
      required this.COP,
      required this.CRC,
      required this.CUC,
      required this.CUP,
      required this.CVE,
      required this.CZK,
      required this.DJF,
      required this.DKK,
      required this.DOP,
      required this.DZD,
      required this.EGP,
      required this.ERN,
      required this.ETB,
      required this.EUR,
      required this.FJD,
      required this.FKP,
      required this.GBP,
      required this.GEL,
      required this.GGP,
      required this.GHS,
      required this.GIP,
      required this.GMD,
      required this.GNF,
      required this.GTQ,
      required this.GYD,
      required this.HKD,
      required this.HNL,
      required this.HRK,
      required this.HTG,
      required this.HUF,
      required this.IDR,
      required this.ILS,
      required this.IMP,
      required this.INR,
      required this.IQD,
      required this.IRR,
      required this.ISK,
      required this.JEP,
      required this.JMD,
      required this.JOD,
      required this.JPY,
      required this.KES,
      required this.KGS,
      required this.KHR,
      required this.KMF,
      required this.KPW,
      required this.KRW,
      required this.KWD,
      required this.KYD,
      required this.KZT,
      required this.LAK,
      required this.LBP,
      required this.LKR,
      required this.LRD,
      required this.LSL,
      required this.LYD,
      required this.MAD,
      required this.MDL,
      required this.MGA,
      required this.MKD,
      required this.MMK,
      required this.MNT,
      required this.MOP,
      required this.MRO,
      required this.MRU,
      required this.MUR,
      required this.MVR,
      required this.MWK,
      required this.MXN,
      required this.MYR,
      required this.MZN,
      required this.NAD,
      required this.NGN,
      required this.NIO,
      required this.NOK,
      required this.NPR,
      required this.NZD,
      required this.OMR,
      required this.PAB,
      required this.PEN,
      required this.PGK,
      required this.PHP,
      required this.PKR,
      required this.PLN,
      required this.PYG,
      required this.QAR,
      required this.RON,
      required this.RSD,
      required this.RUB,
      required this.RWF,
      required this.SAR,
      required this.SBD,
      required this.SCR,
      required this.SDG,
      required this.SEK,
      required this.SGD,
      required this.SHP,
      required this.SLL,
      required this.SOS,
      required this.SRD,
      required this.SSP,
      required this.STD,
      required this.STN,
      required this.SVC,
      required this.SYP,
      required this.SZL,
      required this.THB,
      required this.TJS,
      required this.TMT,
      required this.TND,
      required this.TOP,
      required this.TRY,
      required this.TTD,
      required this.TWD,
      required this.TZS,
      required this.UAH,
      required this.UGX,
      required this.USD,
      required this.UYU,
      required this.UZS,
      required this.VEF,
      required this.VES,
      required this.VND,
      required this.VUV,
      required this.WST,
      required this.XAF,
      required this.XAG,
      required this.XAU,
      required this.XCD,
      required this.XDR,
      required this.XOF,
      required this.XPD,
      required this.XPF,
      required this.XPT,
      required this.YER,
      required this.ZAR,
      required this.ZMW,
      required this.ZWL})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(AED, r'CurrencyBaseData', 'AED');
    BuiltValueNullFieldError.checkNotNull(AFN, r'CurrencyBaseData', 'AFN');
    BuiltValueNullFieldError.checkNotNull(ALL, r'CurrencyBaseData', 'ALL');
    BuiltValueNullFieldError.checkNotNull(AMD, r'CurrencyBaseData', 'AMD');
    BuiltValueNullFieldError.checkNotNull(ANG, r'CurrencyBaseData', 'ANG');
    BuiltValueNullFieldError.checkNotNull(AOA, r'CurrencyBaseData', 'AOA');
    BuiltValueNullFieldError.checkNotNull(ARS, r'CurrencyBaseData', 'ARS');
    BuiltValueNullFieldError.checkNotNull(AUD, r'CurrencyBaseData', 'AUD');
    BuiltValueNullFieldError.checkNotNull(AWG, r'CurrencyBaseData', 'AWG');
    BuiltValueNullFieldError.checkNotNull(AZN, r'CurrencyBaseData', 'AZN');
    BuiltValueNullFieldError.checkNotNull(BAM, r'CurrencyBaseData', 'BAM');
    BuiltValueNullFieldError.checkNotNull(BBD, r'CurrencyBaseData', 'BBD');
    BuiltValueNullFieldError.checkNotNull(BDT, r'CurrencyBaseData', 'BDT');
    BuiltValueNullFieldError.checkNotNull(BGN, r'CurrencyBaseData', 'BGN');
    BuiltValueNullFieldError.checkNotNull(BHD, r'CurrencyBaseData', 'BHD');
    BuiltValueNullFieldError.checkNotNull(BIF, r'CurrencyBaseData', 'BIF');
    BuiltValueNullFieldError.checkNotNull(BMD, r'CurrencyBaseData', 'BMD');
    BuiltValueNullFieldError.checkNotNull(BND, r'CurrencyBaseData', 'BND');
    BuiltValueNullFieldError.checkNotNull(BOB, r'CurrencyBaseData', 'BOB');
    BuiltValueNullFieldError.checkNotNull(BRL, r'CurrencyBaseData', 'BRL');
    BuiltValueNullFieldError.checkNotNull(BSD, r'CurrencyBaseData', 'BSD');
    BuiltValueNullFieldError.checkNotNull(BTC, r'CurrencyBaseData', 'BTC');
    BuiltValueNullFieldError.checkNotNull(BTN, r'CurrencyBaseData', 'BTN');
    BuiltValueNullFieldError.checkNotNull(BWP, r'CurrencyBaseData', 'BWP');
    BuiltValueNullFieldError.checkNotNull(BYN, r'CurrencyBaseData', 'BYN');
    BuiltValueNullFieldError.checkNotNull(BZD, r'CurrencyBaseData', 'BZD');
    BuiltValueNullFieldError.checkNotNull(CAD, r'CurrencyBaseData', 'CAD');
    BuiltValueNullFieldError.checkNotNull(CDF, r'CurrencyBaseData', 'CDF');
    BuiltValueNullFieldError.checkNotNull(CHF, r'CurrencyBaseData', 'CHF');
    BuiltValueNullFieldError.checkNotNull(CLF, r'CurrencyBaseData', 'CLF');
    BuiltValueNullFieldError.checkNotNull(CLP, r'CurrencyBaseData', 'CLP');
    BuiltValueNullFieldError.checkNotNull(CNH, r'CurrencyBaseData', 'CNH');
    BuiltValueNullFieldError.checkNotNull(CNY, r'CurrencyBaseData', 'CNY');
    BuiltValueNullFieldError.checkNotNull(COP, r'CurrencyBaseData', 'COP');
    BuiltValueNullFieldError.checkNotNull(CRC, r'CurrencyBaseData', 'CRC');
    BuiltValueNullFieldError.checkNotNull(CUC, r'CurrencyBaseData', 'CUC');
    BuiltValueNullFieldError.checkNotNull(CUP, r'CurrencyBaseData', 'CUP');
    BuiltValueNullFieldError.checkNotNull(CVE, r'CurrencyBaseData', 'CVE');
    BuiltValueNullFieldError.checkNotNull(CZK, r'CurrencyBaseData', 'CZK');
    BuiltValueNullFieldError.checkNotNull(DJF, r'CurrencyBaseData', 'DJF');
    BuiltValueNullFieldError.checkNotNull(DKK, r'CurrencyBaseData', 'DKK');
    BuiltValueNullFieldError.checkNotNull(DOP, r'CurrencyBaseData', 'DOP');
    BuiltValueNullFieldError.checkNotNull(DZD, r'CurrencyBaseData', 'DZD');
    BuiltValueNullFieldError.checkNotNull(EGP, r'CurrencyBaseData', 'EGP');
    BuiltValueNullFieldError.checkNotNull(ERN, r'CurrencyBaseData', 'ERN');
    BuiltValueNullFieldError.checkNotNull(ETB, r'CurrencyBaseData', 'ETB');
    BuiltValueNullFieldError.checkNotNull(EUR, r'CurrencyBaseData', 'EUR');
    BuiltValueNullFieldError.checkNotNull(FJD, r'CurrencyBaseData', 'FJD');
    BuiltValueNullFieldError.checkNotNull(FKP, r'CurrencyBaseData', 'FKP');
    BuiltValueNullFieldError.checkNotNull(GBP, r'CurrencyBaseData', 'GBP');
    BuiltValueNullFieldError.checkNotNull(GEL, r'CurrencyBaseData', 'GEL');
    BuiltValueNullFieldError.checkNotNull(GGP, r'CurrencyBaseData', 'GGP');
    BuiltValueNullFieldError.checkNotNull(GHS, r'CurrencyBaseData', 'GHS');
    BuiltValueNullFieldError.checkNotNull(GIP, r'CurrencyBaseData', 'GIP');
    BuiltValueNullFieldError.checkNotNull(GMD, r'CurrencyBaseData', 'GMD');
    BuiltValueNullFieldError.checkNotNull(GNF, r'CurrencyBaseData', 'GNF');
    BuiltValueNullFieldError.checkNotNull(GTQ, r'CurrencyBaseData', 'GTQ');
    BuiltValueNullFieldError.checkNotNull(GYD, r'CurrencyBaseData', 'GYD');
    BuiltValueNullFieldError.checkNotNull(HKD, r'CurrencyBaseData', 'HKD');
    BuiltValueNullFieldError.checkNotNull(HNL, r'CurrencyBaseData', 'HNL');
    BuiltValueNullFieldError.checkNotNull(HRK, r'CurrencyBaseData', 'HRK');
    BuiltValueNullFieldError.checkNotNull(HTG, r'CurrencyBaseData', 'HTG');
    BuiltValueNullFieldError.checkNotNull(HUF, r'CurrencyBaseData', 'HUF');
    BuiltValueNullFieldError.checkNotNull(IDR, r'CurrencyBaseData', 'IDR');
    BuiltValueNullFieldError.checkNotNull(ILS, r'CurrencyBaseData', 'ILS');
    BuiltValueNullFieldError.checkNotNull(IMP, r'CurrencyBaseData', 'IMP');
    BuiltValueNullFieldError.checkNotNull(INR, r'CurrencyBaseData', 'INR');
    BuiltValueNullFieldError.checkNotNull(IQD, r'CurrencyBaseData', 'IQD');
    BuiltValueNullFieldError.checkNotNull(IRR, r'CurrencyBaseData', 'IRR');
    BuiltValueNullFieldError.checkNotNull(ISK, r'CurrencyBaseData', 'ISK');
    BuiltValueNullFieldError.checkNotNull(JEP, r'CurrencyBaseData', 'JEP');
    BuiltValueNullFieldError.checkNotNull(JMD, r'CurrencyBaseData', 'JMD');
    BuiltValueNullFieldError.checkNotNull(JOD, r'CurrencyBaseData', 'JOD');
    BuiltValueNullFieldError.checkNotNull(JPY, r'CurrencyBaseData', 'JPY');
    BuiltValueNullFieldError.checkNotNull(KES, r'CurrencyBaseData', 'KES');
    BuiltValueNullFieldError.checkNotNull(KGS, r'CurrencyBaseData', 'KGS');
    BuiltValueNullFieldError.checkNotNull(KHR, r'CurrencyBaseData', 'KHR');
    BuiltValueNullFieldError.checkNotNull(KMF, r'CurrencyBaseData', 'KMF');
    BuiltValueNullFieldError.checkNotNull(KPW, r'CurrencyBaseData', 'KPW');
    BuiltValueNullFieldError.checkNotNull(KRW, r'CurrencyBaseData', 'KRW');
    BuiltValueNullFieldError.checkNotNull(KWD, r'CurrencyBaseData', 'KWD');
    BuiltValueNullFieldError.checkNotNull(KYD, r'CurrencyBaseData', 'KYD');
    BuiltValueNullFieldError.checkNotNull(KZT, r'CurrencyBaseData', 'KZT');
    BuiltValueNullFieldError.checkNotNull(LAK, r'CurrencyBaseData', 'LAK');
    BuiltValueNullFieldError.checkNotNull(LBP, r'CurrencyBaseData', 'LBP');
    BuiltValueNullFieldError.checkNotNull(LKR, r'CurrencyBaseData', 'LKR');
    BuiltValueNullFieldError.checkNotNull(LRD, r'CurrencyBaseData', 'LRD');
    BuiltValueNullFieldError.checkNotNull(LSL, r'CurrencyBaseData', 'LSL');
    BuiltValueNullFieldError.checkNotNull(LYD, r'CurrencyBaseData', 'LYD');
    BuiltValueNullFieldError.checkNotNull(MAD, r'CurrencyBaseData', 'MAD');
    BuiltValueNullFieldError.checkNotNull(MDL, r'CurrencyBaseData', 'MDL');
    BuiltValueNullFieldError.checkNotNull(MGA, r'CurrencyBaseData', 'MGA');
    BuiltValueNullFieldError.checkNotNull(MKD, r'CurrencyBaseData', 'MKD');
    BuiltValueNullFieldError.checkNotNull(MMK, r'CurrencyBaseData', 'MMK');
    BuiltValueNullFieldError.checkNotNull(MNT, r'CurrencyBaseData', 'MNT');
    BuiltValueNullFieldError.checkNotNull(MOP, r'CurrencyBaseData', 'MOP');
    BuiltValueNullFieldError.checkNotNull(MRO, r'CurrencyBaseData', 'MRO');
    BuiltValueNullFieldError.checkNotNull(MRU, r'CurrencyBaseData', 'MRU');
    BuiltValueNullFieldError.checkNotNull(MUR, r'CurrencyBaseData', 'MUR');
    BuiltValueNullFieldError.checkNotNull(MVR, r'CurrencyBaseData', 'MVR');
    BuiltValueNullFieldError.checkNotNull(MWK, r'CurrencyBaseData', 'MWK');
    BuiltValueNullFieldError.checkNotNull(MXN, r'CurrencyBaseData', 'MXN');
    BuiltValueNullFieldError.checkNotNull(MYR, r'CurrencyBaseData', 'MYR');
    BuiltValueNullFieldError.checkNotNull(MZN, r'CurrencyBaseData', 'MZN');
    BuiltValueNullFieldError.checkNotNull(NAD, r'CurrencyBaseData', 'NAD');
    BuiltValueNullFieldError.checkNotNull(NGN, r'CurrencyBaseData', 'NGN');
    BuiltValueNullFieldError.checkNotNull(NIO, r'CurrencyBaseData', 'NIO');
    BuiltValueNullFieldError.checkNotNull(NOK, r'CurrencyBaseData', 'NOK');
    BuiltValueNullFieldError.checkNotNull(NPR, r'CurrencyBaseData', 'NPR');
    BuiltValueNullFieldError.checkNotNull(NZD, r'CurrencyBaseData', 'NZD');
    BuiltValueNullFieldError.checkNotNull(OMR, r'CurrencyBaseData', 'OMR');
    BuiltValueNullFieldError.checkNotNull(PAB, r'CurrencyBaseData', 'PAB');
    BuiltValueNullFieldError.checkNotNull(PEN, r'CurrencyBaseData', 'PEN');
    BuiltValueNullFieldError.checkNotNull(PGK, r'CurrencyBaseData', 'PGK');
    BuiltValueNullFieldError.checkNotNull(PHP, r'CurrencyBaseData', 'PHP');
    BuiltValueNullFieldError.checkNotNull(PKR, r'CurrencyBaseData', 'PKR');
    BuiltValueNullFieldError.checkNotNull(PLN, r'CurrencyBaseData', 'PLN');
    BuiltValueNullFieldError.checkNotNull(PYG, r'CurrencyBaseData', 'PYG');
    BuiltValueNullFieldError.checkNotNull(QAR, r'CurrencyBaseData', 'QAR');
    BuiltValueNullFieldError.checkNotNull(RON, r'CurrencyBaseData', 'RON');
    BuiltValueNullFieldError.checkNotNull(RSD, r'CurrencyBaseData', 'RSD');
    BuiltValueNullFieldError.checkNotNull(RUB, r'CurrencyBaseData', 'RUB');
    BuiltValueNullFieldError.checkNotNull(RWF, r'CurrencyBaseData', 'RWF');
    BuiltValueNullFieldError.checkNotNull(SAR, r'CurrencyBaseData', 'SAR');
    BuiltValueNullFieldError.checkNotNull(SBD, r'CurrencyBaseData', 'SBD');
    BuiltValueNullFieldError.checkNotNull(SCR, r'CurrencyBaseData', 'SCR');
    BuiltValueNullFieldError.checkNotNull(SDG, r'CurrencyBaseData', 'SDG');
    BuiltValueNullFieldError.checkNotNull(SEK, r'CurrencyBaseData', 'SEK');
    BuiltValueNullFieldError.checkNotNull(SGD, r'CurrencyBaseData', 'SGD');
    BuiltValueNullFieldError.checkNotNull(SHP, r'CurrencyBaseData', 'SHP');
    BuiltValueNullFieldError.checkNotNull(SLL, r'CurrencyBaseData', 'SLL');
    BuiltValueNullFieldError.checkNotNull(SOS, r'CurrencyBaseData', 'SOS');
    BuiltValueNullFieldError.checkNotNull(SRD, r'CurrencyBaseData', 'SRD');
    BuiltValueNullFieldError.checkNotNull(SSP, r'CurrencyBaseData', 'SSP');
    BuiltValueNullFieldError.checkNotNull(STD, r'CurrencyBaseData', 'STD');
    BuiltValueNullFieldError.checkNotNull(STN, r'CurrencyBaseData', 'STN');
    BuiltValueNullFieldError.checkNotNull(SVC, r'CurrencyBaseData', 'SVC');
    BuiltValueNullFieldError.checkNotNull(SYP, r'CurrencyBaseData', 'SYP');
    BuiltValueNullFieldError.checkNotNull(SZL, r'CurrencyBaseData', 'SZL');
    BuiltValueNullFieldError.checkNotNull(THB, r'CurrencyBaseData', 'THB');
    BuiltValueNullFieldError.checkNotNull(TJS, r'CurrencyBaseData', 'TJS');
    BuiltValueNullFieldError.checkNotNull(TMT, r'CurrencyBaseData', 'TMT');
    BuiltValueNullFieldError.checkNotNull(TND, r'CurrencyBaseData', 'TND');
    BuiltValueNullFieldError.checkNotNull(TOP, r'CurrencyBaseData', 'TOP');
    BuiltValueNullFieldError.checkNotNull(TRY, r'CurrencyBaseData', 'TRY');
    BuiltValueNullFieldError.checkNotNull(TTD, r'CurrencyBaseData', 'TTD');
    BuiltValueNullFieldError.checkNotNull(TWD, r'CurrencyBaseData', 'TWD');
    BuiltValueNullFieldError.checkNotNull(TZS, r'CurrencyBaseData', 'TZS');
    BuiltValueNullFieldError.checkNotNull(UAH, r'CurrencyBaseData', 'UAH');
    BuiltValueNullFieldError.checkNotNull(UGX, r'CurrencyBaseData', 'UGX');
    BuiltValueNullFieldError.checkNotNull(USD, r'CurrencyBaseData', 'USD');
    BuiltValueNullFieldError.checkNotNull(UYU, r'CurrencyBaseData', 'UYU');
    BuiltValueNullFieldError.checkNotNull(UZS, r'CurrencyBaseData', 'UZS');
    BuiltValueNullFieldError.checkNotNull(VEF, r'CurrencyBaseData', 'VEF');
    BuiltValueNullFieldError.checkNotNull(VES, r'CurrencyBaseData', 'VES');
    BuiltValueNullFieldError.checkNotNull(VND, r'CurrencyBaseData', 'VND');
    BuiltValueNullFieldError.checkNotNull(VUV, r'CurrencyBaseData', 'VUV');
    BuiltValueNullFieldError.checkNotNull(WST, r'CurrencyBaseData', 'WST');
    BuiltValueNullFieldError.checkNotNull(XAF, r'CurrencyBaseData', 'XAF');
    BuiltValueNullFieldError.checkNotNull(XAG, r'CurrencyBaseData', 'XAG');
    BuiltValueNullFieldError.checkNotNull(XAU, r'CurrencyBaseData', 'XAU');
    BuiltValueNullFieldError.checkNotNull(XCD, r'CurrencyBaseData', 'XCD');
    BuiltValueNullFieldError.checkNotNull(XDR, r'CurrencyBaseData', 'XDR');
    BuiltValueNullFieldError.checkNotNull(XOF, r'CurrencyBaseData', 'XOF');
    BuiltValueNullFieldError.checkNotNull(XPD, r'CurrencyBaseData', 'XPD');
    BuiltValueNullFieldError.checkNotNull(XPF, r'CurrencyBaseData', 'XPF');
    BuiltValueNullFieldError.checkNotNull(XPT, r'CurrencyBaseData', 'XPT');
    BuiltValueNullFieldError.checkNotNull(YER, r'CurrencyBaseData', 'YER');
    BuiltValueNullFieldError.checkNotNull(ZAR, r'CurrencyBaseData', 'ZAR');
    BuiltValueNullFieldError.checkNotNull(ZMW, r'CurrencyBaseData', 'ZMW');
    BuiltValueNullFieldError.checkNotNull(ZWL, r'CurrencyBaseData', 'ZWL');
  }

  @override
  CurrencyBaseData rebuild(void Function(CurrencyBaseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrencyBaseDataBuilder toBuilder() =>
      new CurrencyBaseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrencyBaseData &&
        AED == other.AED &&
        AFN == other.AFN &&
        ALL == other.ALL &&
        AMD == other.AMD &&
        ANG == other.ANG &&
        AOA == other.AOA &&
        ARS == other.ARS &&
        AUD == other.AUD &&
        AWG == other.AWG &&
        AZN == other.AZN &&
        BAM == other.BAM &&
        BBD == other.BBD &&
        BDT == other.BDT &&
        BGN == other.BGN &&
        BHD == other.BHD &&
        BIF == other.BIF &&
        BMD == other.BMD &&
        BND == other.BND &&
        BOB == other.BOB &&
        BRL == other.BRL &&
        BSD == other.BSD &&
        BTC == other.BTC &&
        BTN == other.BTN &&
        BWP == other.BWP &&
        BYN == other.BYN &&
        BZD == other.BZD &&
        CAD == other.CAD &&
        CDF == other.CDF &&
        CHF == other.CHF &&
        CLF == other.CLF &&
        CLP == other.CLP &&
        CNH == other.CNH &&
        CNY == other.CNY &&
        COP == other.COP &&
        CRC == other.CRC &&
        CUC == other.CUC &&
        CUP == other.CUP &&
        CVE == other.CVE &&
        CZK == other.CZK &&
        DJF == other.DJF &&
        DKK == other.DKK &&
        DOP == other.DOP &&
        DZD == other.DZD &&
        EGP == other.EGP &&
        ERN == other.ERN &&
        ETB == other.ETB &&
        EUR == other.EUR &&
        FJD == other.FJD &&
        FKP == other.FKP &&
        GBP == other.GBP &&
        GEL == other.GEL &&
        GGP == other.GGP &&
        GHS == other.GHS &&
        GIP == other.GIP &&
        GMD == other.GMD &&
        GNF == other.GNF &&
        GTQ == other.GTQ &&
        GYD == other.GYD &&
        HKD == other.HKD &&
        HNL == other.HNL &&
        HRK == other.HRK &&
        HTG == other.HTG &&
        HUF == other.HUF &&
        IDR == other.IDR &&
        ILS == other.ILS &&
        IMP == other.IMP &&
        INR == other.INR &&
        IQD == other.IQD &&
        IRR == other.IRR &&
        ISK == other.ISK &&
        JEP == other.JEP &&
        JMD == other.JMD &&
        JOD == other.JOD &&
        JPY == other.JPY &&
        KES == other.KES &&
        KGS == other.KGS &&
        KHR == other.KHR &&
        KMF == other.KMF &&
        KPW == other.KPW &&
        KRW == other.KRW &&
        KWD == other.KWD &&
        KYD == other.KYD &&
        KZT == other.KZT &&
        LAK == other.LAK &&
        LBP == other.LBP &&
        LKR == other.LKR &&
        LRD == other.LRD &&
        LSL == other.LSL &&
        LYD == other.LYD &&
        MAD == other.MAD &&
        MDL == other.MDL &&
        MGA == other.MGA &&
        MKD == other.MKD &&
        MMK == other.MMK &&
        MNT == other.MNT &&
        MOP == other.MOP &&
        MRO == other.MRO &&
        MRU == other.MRU &&
        MUR == other.MUR &&
        MVR == other.MVR &&
        MWK == other.MWK &&
        MXN == other.MXN &&
        MYR == other.MYR &&
        MZN == other.MZN &&
        NAD == other.NAD &&
        NGN == other.NGN &&
        NIO == other.NIO &&
        NOK == other.NOK &&
        NPR == other.NPR &&
        NZD == other.NZD &&
        OMR == other.OMR &&
        PAB == other.PAB &&
        PEN == other.PEN &&
        PGK == other.PGK &&
        PHP == other.PHP &&
        PKR == other.PKR &&
        PLN == other.PLN &&
        PYG == other.PYG &&
        QAR == other.QAR &&
        RON == other.RON &&
        RSD == other.RSD &&
        RUB == other.RUB &&
        RWF == other.RWF &&
        SAR == other.SAR &&
        SBD == other.SBD &&
        SCR == other.SCR &&
        SDG == other.SDG &&
        SEK == other.SEK &&
        SGD == other.SGD &&
        SHP == other.SHP &&
        SLL == other.SLL &&
        SOS == other.SOS &&
        SRD == other.SRD &&
        SSP == other.SSP &&
        STD == other.STD &&
        STN == other.STN &&
        SVC == other.SVC &&
        SYP == other.SYP &&
        SZL == other.SZL &&
        THB == other.THB &&
        TJS == other.TJS &&
        TMT == other.TMT &&
        TND == other.TND &&
        TOP == other.TOP &&
        TRY == other.TRY &&
        TTD == other.TTD &&
        TWD == other.TWD &&
        TZS == other.TZS &&
        UAH == other.UAH &&
        UGX == other.UGX &&
        USD == other.USD &&
        UYU == other.UYU &&
        UZS == other.UZS &&
        VEF == other.VEF &&
        VES == other.VES &&
        VND == other.VND &&
        VUV == other.VUV &&
        WST == other.WST &&
        XAF == other.XAF &&
        XAG == other.XAG &&
        XAU == other.XAU &&
        XCD == other.XCD &&
        XDR == other.XDR &&
        XOF == other.XOF &&
        XPD == other.XPD &&
        XPF == other.XPF &&
        XPT == other.XPT &&
        YER == other.YER &&
        ZAR == other.ZAR &&
        ZMW == other.ZMW &&
        ZWL == other.ZWL;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, AED.hashCode);
    _$hash = $jc(_$hash, AFN.hashCode);
    _$hash = $jc(_$hash, ALL.hashCode);
    _$hash = $jc(_$hash, AMD.hashCode);
    _$hash = $jc(_$hash, ANG.hashCode);
    _$hash = $jc(_$hash, AOA.hashCode);
    _$hash = $jc(_$hash, ARS.hashCode);
    _$hash = $jc(_$hash, AUD.hashCode);
    _$hash = $jc(_$hash, AWG.hashCode);
    _$hash = $jc(_$hash, AZN.hashCode);
    _$hash = $jc(_$hash, BAM.hashCode);
    _$hash = $jc(_$hash, BBD.hashCode);
    _$hash = $jc(_$hash, BDT.hashCode);
    _$hash = $jc(_$hash, BGN.hashCode);
    _$hash = $jc(_$hash, BHD.hashCode);
    _$hash = $jc(_$hash, BIF.hashCode);
    _$hash = $jc(_$hash, BMD.hashCode);
    _$hash = $jc(_$hash, BND.hashCode);
    _$hash = $jc(_$hash, BOB.hashCode);
    _$hash = $jc(_$hash, BRL.hashCode);
    _$hash = $jc(_$hash, BSD.hashCode);
    _$hash = $jc(_$hash, BTC.hashCode);
    _$hash = $jc(_$hash, BTN.hashCode);
    _$hash = $jc(_$hash, BWP.hashCode);
    _$hash = $jc(_$hash, BYN.hashCode);
    _$hash = $jc(_$hash, BZD.hashCode);
    _$hash = $jc(_$hash, CAD.hashCode);
    _$hash = $jc(_$hash, CDF.hashCode);
    _$hash = $jc(_$hash, CHF.hashCode);
    _$hash = $jc(_$hash, CLF.hashCode);
    _$hash = $jc(_$hash, CLP.hashCode);
    _$hash = $jc(_$hash, CNH.hashCode);
    _$hash = $jc(_$hash, CNY.hashCode);
    _$hash = $jc(_$hash, COP.hashCode);
    _$hash = $jc(_$hash, CRC.hashCode);
    _$hash = $jc(_$hash, CUC.hashCode);
    _$hash = $jc(_$hash, CUP.hashCode);
    _$hash = $jc(_$hash, CVE.hashCode);
    _$hash = $jc(_$hash, CZK.hashCode);
    _$hash = $jc(_$hash, DJF.hashCode);
    _$hash = $jc(_$hash, DKK.hashCode);
    _$hash = $jc(_$hash, DOP.hashCode);
    _$hash = $jc(_$hash, DZD.hashCode);
    _$hash = $jc(_$hash, EGP.hashCode);
    _$hash = $jc(_$hash, ERN.hashCode);
    _$hash = $jc(_$hash, ETB.hashCode);
    _$hash = $jc(_$hash, EUR.hashCode);
    _$hash = $jc(_$hash, FJD.hashCode);
    _$hash = $jc(_$hash, FKP.hashCode);
    _$hash = $jc(_$hash, GBP.hashCode);
    _$hash = $jc(_$hash, GEL.hashCode);
    _$hash = $jc(_$hash, GGP.hashCode);
    _$hash = $jc(_$hash, GHS.hashCode);
    _$hash = $jc(_$hash, GIP.hashCode);
    _$hash = $jc(_$hash, GMD.hashCode);
    _$hash = $jc(_$hash, GNF.hashCode);
    _$hash = $jc(_$hash, GTQ.hashCode);
    _$hash = $jc(_$hash, GYD.hashCode);
    _$hash = $jc(_$hash, HKD.hashCode);
    _$hash = $jc(_$hash, HNL.hashCode);
    _$hash = $jc(_$hash, HRK.hashCode);
    _$hash = $jc(_$hash, HTG.hashCode);
    _$hash = $jc(_$hash, HUF.hashCode);
    _$hash = $jc(_$hash, IDR.hashCode);
    _$hash = $jc(_$hash, ILS.hashCode);
    _$hash = $jc(_$hash, IMP.hashCode);
    _$hash = $jc(_$hash, INR.hashCode);
    _$hash = $jc(_$hash, IQD.hashCode);
    _$hash = $jc(_$hash, IRR.hashCode);
    _$hash = $jc(_$hash, ISK.hashCode);
    _$hash = $jc(_$hash, JEP.hashCode);
    _$hash = $jc(_$hash, JMD.hashCode);
    _$hash = $jc(_$hash, JOD.hashCode);
    _$hash = $jc(_$hash, JPY.hashCode);
    _$hash = $jc(_$hash, KES.hashCode);
    _$hash = $jc(_$hash, KGS.hashCode);
    _$hash = $jc(_$hash, KHR.hashCode);
    _$hash = $jc(_$hash, KMF.hashCode);
    _$hash = $jc(_$hash, KPW.hashCode);
    _$hash = $jc(_$hash, KRW.hashCode);
    _$hash = $jc(_$hash, KWD.hashCode);
    _$hash = $jc(_$hash, KYD.hashCode);
    _$hash = $jc(_$hash, KZT.hashCode);
    _$hash = $jc(_$hash, LAK.hashCode);
    _$hash = $jc(_$hash, LBP.hashCode);
    _$hash = $jc(_$hash, LKR.hashCode);
    _$hash = $jc(_$hash, LRD.hashCode);
    _$hash = $jc(_$hash, LSL.hashCode);
    _$hash = $jc(_$hash, LYD.hashCode);
    _$hash = $jc(_$hash, MAD.hashCode);
    _$hash = $jc(_$hash, MDL.hashCode);
    _$hash = $jc(_$hash, MGA.hashCode);
    _$hash = $jc(_$hash, MKD.hashCode);
    _$hash = $jc(_$hash, MMK.hashCode);
    _$hash = $jc(_$hash, MNT.hashCode);
    _$hash = $jc(_$hash, MOP.hashCode);
    _$hash = $jc(_$hash, MRO.hashCode);
    _$hash = $jc(_$hash, MRU.hashCode);
    _$hash = $jc(_$hash, MUR.hashCode);
    _$hash = $jc(_$hash, MVR.hashCode);
    _$hash = $jc(_$hash, MWK.hashCode);
    _$hash = $jc(_$hash, MXN.hashCode);
    _$hash = $jc(_$hash, MYR.hashCode);
    _$hash = $jc(_$hash, MZN.hashCode);
    _$hash = $jc(_$hash, NAD.hashCode);
    _$hash = $jc(_$hash, NGN.hashCode);
    _$hash = $jc(_$hash, NIO.hashCode);
    _$hash = $jc(_$hash, NOK.hashCode);
    _$hash = $jc(_$hash, NPR.hashCode);
    _$hash = $jc(_$hash, NZD.hashCode);
    _$hash = $jc(_$hash, OMR.hashCode);
    _$hash = $jc(_$hash, PAB.hashCode);
    _$hash = $jc(_$hash, PEN.hashCode);
    _$hash = $jc(_$hash, PGK.hashCode);
    _$hash = $jc(_$hash, PHP.hashCode);
    _$hash = $jc(_$hash, PKR.hashCode);
    _$hash = $jc(_$hash, PLN.hashCode);
    _$hash = $jc(_$hash, PYG.hashCode);
    _$hash = $jc(_$hash, QAR.hashCode);
    _$hash = $jc(_$hash, RON.hashCode);
    _$hash = $jc(_$hash, RSD.hashCode);
    _$hash = $jc(_$hash, RUB.hashCode);
    _$hash = $jc(_$hash, RWF.hashCode);
    _$hash = $jc(_$hash, SAR.hashCode);
    _$hash = $jc(_$hash, SBD.hashCode);
    _$hash = $jc(_$hash, SCR.hashCode);
    _$hash = $jc(_$hash, SDG.hashCode);
    _$hash = $jc(_$hash, SEK.hashCode);
    _$hash = $jc(_$hash, SGD.hashCode);
    _$hash = $jc(_$hash, SHP.hashCode);
    _$hash = $jc(_$hash, SLL.hashCode);
    _$hash = $jc(_$hash, SOS.hashCode);
    _$hash = $jc(_$hash, SRD.hashCode);
    _$hash = $jc(_$hash, SSP.hashCode);
    _$hash = $jc(_$hash, STD.hashCode);
    _$hash = $jc(_$hash, STN.hashCode);
    _$hash = $jc(_$hash, SVC.hashCode);
    _$hash = $jc(_$hash, SYP.hashCode);
    _$hash = $jc(_$hash, SZL.hashCode);
    _$hash = $jc(_$hash, THB.hashCode);
    _$hash = $jc(_$hash, TJS.hashCode);
    _$hash = $jc(_$hash, TMT.hashCode);
    _$hash = $jc(_$hash, TND.hashCode);
    _$hash = $jc(_$hash, TOP.hashCode);
    _$hash = $jc(_$hash, TRY.hashCode);
    _$hash = $jc(_$hash, TTD.hashCode);
    _$hash = $jc(_$hash, TWD.hashCode);
    _$hash = $jc(_$hash, TZS.hashCode);
    _$hash = $jc(_$hash, UAH.hashCode);
    _$hash = $jc(_$hash, UGX.hashCode);
    _$hash = $jc(_$hash, USD.hashCode);
    _$hash = $jc(_$hash, UYU.hashCode);
    _$hash = $jc(_$hash, UZS.hashCode);
    _$hash = $jc(_$hash, VEF.hashCode);
    _$hash = $jc(_$hash, VES.hashCode);
    _$hash = $jc(_$hash, VND.hashCode);
    _$hash = $jc(_$hash, VUV.hashCode);
    _$hash = $jc(_$hash, WST.hashCode);
    _$hash = $jc(_$hash, XAF.hashCode);
    _$hash = $jc(_$hash, XAG.hashCode);
    _$hash = $jc(_$hash, XAU.hashCode);
    _$hash = $jc(_$hash, XCD.hashCode);
    _$hash = $jc(_$hash, XDR.hashCode);
    _$hash = $jc(_$hash, XOF.hashCode);
    _$hash = $jc(_$hash, XPD.hashCode);
    _$hash = $jc(_$hash, XPF.hashCode);
    _$hash = $jc(_$hash, XPT.hashCode);
    _$hash = $jc(_$hash, YER.hashCode);
    _$hash = $jc(_$hash, ZAR.hashCode);
    _$hash = $jc(_$hash, ZMW.hashCode);
    _$hash = $jc(_$hash, ZWL.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CurrencyBaseData')
          ..add('AED', AED)
          ..add('AFN', AFN)
          ..add('ALL', ALL)
          ..add('AMD', AMD)
          ..add('ANG', ANG)
          ..add('AOA', AOA)
          ..add('ARS', ARS)
          ..add('AUD', AUD)
          ..add('AWG', AWG)
          ..add('AZN', AZN)
          ..add('BAM', BAM)
          ..add('BBD', BBD)
          ..add('BDT', BDT)
          ..add('BGN', BGN)
          ..add('BHD', BHD)
          ..add('BIF', BIF)
          ..add('BMD', BMD)
          ..add('BND', BND)
          ..add('BOB', BOB)
          ..add('BRL', BRL)
          ..add('BSD', BSD)
          ..add('BTC', BTC)
          ..add('BTN', BTN)
          ..add('BWP', BWP)
          ..add('BYN', BYN)
          ..add('BZD', BZD)
          ..add('CAD', CAD)
          ..add('CDF', CDF)
          ..add('CHF', CHF)
          ..add('CLF', CLF)
          ..add('CLP', CLP)
          ..add('CNH', CNH)
          ..add('CNY', CNY)
          ..add('COP', COP)
          ..add('CRC', CRC)
          ..add('CUC', CUC)
          ..add('CUP', CUP)
          ..add('CVE', CVE)
          ..add('CZK', CZK)
          ..add('DJF', DJF)
          ..add('DKK', DKK)
          ..add('DOP', DOP)
          ..add('DZD', DZD)
          ..add('EGP', EGP)
          ..add('ERN', ERN)
          ..add('ETB', ETB)
          ..add('EUR', EUR)
          ..add('FJD', FJD)
          ..add('FKP', FKP)
          ..add('GBP', GBP)
          ..add('GEL', GEL)
          ..add('GGP', GGP)
          ..add('GHS', GHS)
          ..add('GIP', GIP)
          ..add('GMD', GMD)
          ..add('GNF', GNF)
          ..add('GTQ', GTQ)
          ..add('GYD', GYD)
          ..add('HKD', HKD)
          ..add('HNL', HNL)
          ..add('HRK', HRK)
          ..add('HTG', HTG)
          ..add('HUF', HUF)
          ..add('IDR', IDR)
          ..add('ILS', ILS)
          ..add('IMP', IMP)
          ..add('INR', INR)
          ..add('IQD', IQD)
          ..add('IRR', IRR)
          ..add('ISK', ISK)
          ..add('JEP', JEP)
          ..add('JMD', JMD)
          ..add('JOD', JOD)
          ..add('JPY', JPY)
          ..add('KES', KES)
          ..add('KGS', KGS)
          ..add('KHR', KHR)
          ..add('KMF', KMF)
          ..add('KPW', KPW)
          ..add('KRW', KRW)
          ..add('KWD', KWD)
          ..add('KYD', KYD)
          ..add('KZT', KZT)
          ..add('LAK', LAK)
          ..add('LBP', LBP)
          ..add('LKR', LKR)
          ..add('LRD', LRD)
          ..add('LSL', LSL)
          ..add('LYD', LYD)
          ..add('MAD', MAD)
          ..add('MDL', MDL)
          ..add('MGA', MGA)
          ..add('MKD', MKD)
          ..add('MMK', MMK)
          ..add('MNT', MNT)
          ..add('MOP', MOP)
          ..add('MRO', MRO)
          ..add('MRU', MRU)
          ..add('MUR', MUR)
          ..add('MVR', MVR)
          ..add('MWK', MWK)
          ..add('MXN', MXN)
          ..add('MYR', MYR)
          ..add('MZN', MZN)
          ..add('NAD', NAD)
          ..add('NGN', NGN)
          ..add('NIO', NIO)
          ..add('NOK', NOK)
          ..add('NPR', NPR)
          ..add('NZD', NZD)
          ..add('OMR', OMR)
          ..add('PAB', PAB)
          ..add('PEN', PEN)
          ..add('PGK', PGK)
          ..add('PHP', PHP)
          ..add('PKR', PKR)
          ..add('PLN', PLN)
          ..add('PYG', PYG)
          ..add('QAR', QAR)
          ..add('RON', RON)
          ..add('RSD', RSD)
          ..add('RUB', RUB)
          ..add('RWF', RWF)
          ..add('SAR', SAR)
          ..add('SBD', SBD)
          ..add('SCR', SCR)
          ..add('SDG', SDG)
          ..add('SEK', SEK)
          ..add('SGD', SGD)
          ..add('SHP', SHP)
          ..add('SLL', SLL)
          ..add('SOS', SOS)
          ..add('SRD', SRD)
          ..add('SSP', SSP)
          ..add('STD', STD)
          ..add('STN', STN)
          ..add('SVC', SVC)
          ..add('SYP', SYP)
          ..add('SZL', SZL)
          ..add('THB', THB)
          ..add('TJS', TJS)
          ..add('TMT', TMT)
          ..add('TND', TND)
          ..add('TOP', TOP)
          ..add('TRY', TRY)
          ..add('TTD', TTD)
          ..add('TWD', TWD)
          ..add('TZS', TZS)
          ..add('UAH', UAH)
          ..add('UGX', UGX)
          ..add('USD', USD)
          ..add('UYU', UYU)
          ..add('UZS', UZS)
          ..add('VEF', VEF)
          ..add('VES', VES)
          ..add('VND', VND)
          ..add('VUV', VUV)
          ..add('WST', WST)
          ..add('XAF', XAF)
          ..add('XAG', XAG)
          ..add('XAU', XAU)
          ..add('XCD', XCD)
          ..add('XDR', XDR)
          ..add('XOF', XOF)
          ..add('XPD', XPD)
          ..add('XPF', XPF)
          ..add('XPT', XPT)
          ..add('YER', YER)
          ..add('ZAR', ZAR)
          ..add('ZMW', ZMW)
          ..add('ZWL', ZWL))
        .toString();
  }
}

class CurrencyBaseDataBuilder
    implements Builder<CurrencyBaseData, CurrencyBaseDataBuilder> {
  _$CurrencyBaseData? _$v;

  double? _AED;
  double? get AED => _$this._AED;
  set AED(double? AED) => _$this._AED = AED;

  double? _AFN;
  double? get AFN => _$this._AFN;
  set AFN(double? AFN) => _$this._AFN = AFN;

  double? _ALL;
  double? get ALL => _$this._ALL;
  set ALL(double? ALL) => _$this._ALL = ALL;

  double? _AMD;
  double? get AMD => _$this._AMD;
  set AMD(double? AMD) => _$this._AMD = AMD;

  double? _ANG;
  double? get ANG => _$this._ANG;
  set ANG(double? ANG) => _$this._ANG = ANG;

  double? _AOA;
  double? get AOA => _$this._AOA;
  set AOA(double? AOA) => _$this._AOA = AOA;

  double? _ARS;
  double? get ARS => _$this._ARS;
  set ARS(double? ARS) => _$this._ARS = ARS;

  double? _AUD;
  double? get AUD => _$this._AUD;
  set AUD(double? AUD) => _$this._AUD = AUD;

  double? _AWG;
  double? get AWG => _$this._AWG;
  set AWG(double? AWG) => _$this._AWG = AWG;

  double? _AZN;
  double? get AZN => _$this._AZN;
  set AZN(double? AZN) => _$this._AZN = AZN;

  double? _BAM;
  double? get BAM => _$this._BAM;
  set BAM(double? BAM) => _$this._BAM = BAM;

  double? _BBD;
  double? get BBD => _$this._BBD;
  set BBD(double? BBD) => _$this._BBD = BBD;

  double? _BDT;
  double? get BDT => _$this._BDT;
  set BDT(double? BDT) => _$this._BDT = BDT;

  double? _BGN;
  double? get BGN => _$this._BGN;
  set BGN(double? BGN) => _$this._BGN = BGN;

  double? _BHD;
  double? get BHD => _$this._BHD;
  set BHD(double? BHD) => _$this._BHD = BHD;

  double? _BIF;
  double? get BIF => _$this._BIF;
  set BIF(double? BIF) => _$this._BIF = BIF;

  double? _BMD;
  double? get BMD => _$this._BMD;
  set BMD(double? BMD) => _$this._BMD = BMD;

  double? _BND;
  double? get BND => _$this._BND;
  set BND(double? BND) => _$this._BND = BND;

  double? _BOB;
  double? get BOB => _$this._BOB;
  set BOB(double? BOB) => _$this._BOB = BOB;

  double? _BRL;
  double? get BRL => _$this._BRL;
  set BRL(double? BRL) => _$this._BRL = BRL;

  double? _BSD;
  double? get BSD => _$this._BSD;
  set BSD(double? BSD) => _$this._BSD = BSD;

  double? _BTC;
  double? get BTC => _$this._BTC;
  set BTC(double? BTC) => _$this._BTC = BTC;

  double? _BTN;
  double? get BTN => _$this._BTN;
  set BTN(double? BTN) => _$this._BTN = BTN;

  double? _BWP;
  double? get BWP => _$this._BWP;
  set BWP(double? BWP) => _$this._BWP = BWP;

  double? _BYN;
  double? get BYN => _$this._BYN;
  set BYN(double? BYN) => _$this._BYN = BYN;

  double? _BZD;
  double? get BZD => _$this._BZD;
  set BZD(double? BZD) => _$this._BZD = BZD;

  double? _CAD;
  double? get CAD => _$this._CAD;
  set CAD(double? CAD) => _$this._CAD = CAD;

  double? _CDF;
  double? get CDF => _$this._CDF;
  set CDF(double? CDF) => _$this._CDF = CDF;

  double? _CHF;
  double? get CHF => _$this._CHF;
  set CHF(double? CHF) => _$this._CHF = CHF;

  double? _CLF;
  double? get CLF => _$this._CLF;
  set CLF(double? CLF) => _$this._CLF = CLF;

  double? _CLP;
  double? get CLP => _$this._CLP;
  set CLP(double? CLP) => _$this._CLP = CLP;

  double? _CNH;
  double? get CNH => _$this._CNH;
  set CNH(double? CNH) => _$this._CNH = CNH;

  double? _CNY;
  double? get CNY => _$this._CNY;
  set CNY(double? CNY) => _$this._CNY = CNY;

  double? _COP;
  double? get COP => _$this._COP;
  set COP(double? COP) => _$this._COP = COP;

  double? _CRC;
  double? get CRC => _$this._CRC;
  set CRC(double? CRC) => _$this._CRC = CRC;

  double? _CUC;
  double? get CUC => _$this._CUC;
  set CUC(double? CUC) => _$this._CUC = CUC;

  double? _CUP;
  double? get CUP => _$this._CUP;
  set CUP(double? CUP) => _$this._CUP = CUP;

  double? _CVE;
  double? get CVE => _$this._CVE;
  set CVE(double? CVE) => _$this._CVE = CVE;

  double? _CZK;
  double? get CZK => _$this._CZK;
  set CZK(double? CZK) => _$this._CZK = CZK;

  double? _DJF;
  double? get DJF => _$this._DJF;
  set DJF(double? DJF) => _$this._DJF = DJF;

  double? _DKK;
  double? get DKK => _$this._DKK;
  set DKK(double? DKK) => _$this._DKK = DKK;

  double? _DOP;
  double? get DOP => _$this._DOP;
  set DOP(double? DOP) => _$this._DOP = DOP;

  double? _DZD;
  double? get DZD => _$this._DZD;
  set DZD(double? DZD) => _$this._DZD = DZD;

  double? _EGP;
  double? get EGP => _$this._EGP;
  set EGP(double? EGP) => _$this._EGP = EGP;

  double? _ERN;
  double? get ERN => _$this._ERN;
  set ERN(double? ERN) => _$this._ERN = ERN;

  double? _ETB;
  double? get ETB => _$this._ETB;
  set ETB(double? ETB) => _$this._ETB = ETB;

  double? _EUR;
  double? get EUR => _$this._EUR;
  set EUR(double? EUR) => _$this._EUR = EUR;

  double? _FJD;
  double? get FJD => _$this._FJD;
  set FJD(double? FJD) => _$this._FJD = FJD;

  double? _FKP;
  double? get FKP => _$this._FKP;
  set FKP(double? FKP) => _$this._FKP = FKP;

  double? _GBP;
  double? get GBP => _$this._GBP;
  set GBP(double? GBP) => _$this._GBP = GBP;

  double? _GEL;
  double? get GEL => _$this._GEL;
  set GEL(double? GEL) => _$this._GEL = GEL;

  double? _GGP;
  double? get GGP => _$this._GGP;
  set GGP(double? GGP) => _$this._GGP = GGP;

  double? _GHS;
  double? get GHS => _$this._GHS;
  set GHS(double? GHS) => _$this._GHS = GHS;

  double? _GIP;
  double? get GIP => _$this._GIP;
  set GIP(double? GIP) => _$this._GIP = GIP;

  double? _GMD;
  double? get GMD => _$this._GMD;
  set GMD(double? GMD) => _$this._GMD = GMD;

  double? _GNF;
  double? get GNF => _$this._GNF;
  set GNF(double? GNF) => _$this._GNF = GNF;

  double? _GTQ;
  double? get GTQ => _$this._GTQ;
  set GTQ(double? GTQ) => _$this._GTQ = GTQ;

  double? _GYD;
  double? get GYD => _$this._GYD;
  set GYD(double? GYD) => _$this._GYD = GYD;

  double? _HKD;
  double? get HKD => _$this._HKD;
  set HKD(double? HKD) => _$this._HKD = HKD;

  double? _HNL;
  double? get HNL => _$this._HNL;
  set HNL(double? HNL) => _$this._HNL = HNL;

  double? _HRK;
  double? get HRK => _$this._HRK;
  set HRK(double? HRK) => _$this._HRK = HRK;

  double? _HTG;
  double? get HTG => _$this._HTG;
  set HTG(double? HTG) => _$this._HTG = HTG;

  double? _HUF;
  double? get HUF => _$this._HUF;
  set HUF(double? HUF) => _$this._HUF = HUF;

  double? _IDR;
  double? get IDR => _$this._IDR;
  set IDR(double? IDR) => _$this._IDR = IDR;

  double? _ILS;
  double? get ILS => _$this._ILS;
  set ILS(double? ILS) => _$this._ILS = ILS;

  double? _IMP;
  double? get IMP => _$this._IMP;
  set IMP(double? IMP) => _$this._IMP = IMP;

  double? _INR;
  double? get INR => _$this._INR;
  set INR(double? INR) => _$this._INR = INR;

  double? _IQD;
  double? get IQD => _$this._IQD;
  set IQD(double? IQD) => _$this._IQD = IQD;

  double? _IRR;
  double? get IRR => _$this._IRR;
  set IRR(double? IRR) => _$this._IRR = IRR;

  double? _ISK;
  double? get ISK => _$this._ISK;
  set ISK(double? ISK) => _$this._ISK = ISK;

  double? _JEP;
  double? get JEP => _$this._JEP;
  set JEP(double? JEP) => _$this._JEP = JEP;

  double? _JMD;
  double? get JMD => _$this._JMD;
  set JMD(double? JMD) => _$this._JMD = JMD;

  double? _JOD;
  double? get JOD => _$this._JOD;
  set JOD(double? JOD) => _$this._JOD = JOD;

  double? _JPY;
  double? get JPY => _$this._JPY;
  set JPY(double? JPY) => _$this._JPY = JPY;

  double? _KES;
  double? get KES => _$this._KES;
  set KES(double? KES) => _$this._KES = KES;

  double? _KGS;
  double? get KGS => _$this._KGS;
  set KGS(double? KGS) => _$this._KGS = KGS;

  double? _KHR;
  double? get KHR => _$this._KHR;
  set KHR(double? KHR) => _$this._KHR = KHR;

  double? _KMF;
  double? get KMF => _$this._KMF;
  set KMF(double? KMF) => _$this._KMF = KMF;

  double? _KPW;
  double? get KPW => _$this._KPW;
  set KPW(double? KPW) => _$this._KPW = KPW;

  double? _KRW;
  double? get KRW => _$this._KRW;
  set KRW(double? KRW) => _$this._KRW = KRW;

  double? _KWD;
  double? get KWD => _$this._KWD;
  set KWD(double? KWD) => _$this._KWD = KWD;

  double? _KYD;
  double? get KYD => _$this._KYD;
  set KYD(double? KYD) => _$this._KYD = KYD;

  double? _KZT;
  double? get KZT => _$this._KZT;
  set KZT(double? KZT) => _$this._KZT = KZT;

  double? _LAK;
  double? get LAK => _$this._LAK;
  set LAK(double? LAK) => _$this._LAK = LAK;

  double? _LBP;
  double? get LBP => _$this._LBP;
  set LBP(double? LBP) => _$this._LBP = LBP;

  double? _LKR;
  double? get LKR => _$this._LKR;
  set LKR(double? LKR) => _$this._LKR = LKR;

  double? _LRD;
  double? get LRD => _$this._LRD;
  set LRD(double? LRD) => _$this._LRD = LRD;

  double? _LSL;
  double? get LSL => _$this._LSL;
  set LSL(double? LSL) => _$this._LSL = LSL;

  double? _LYD;
  double? get LYD => _$this._LYD;
  set LYD(double? LYD) => _$this._LYD = LYD;

  double? _MAD;
  double? get MAD => _$this._MAD;
  set MAD(double? MAD) => _$this._MAD = MAD;

  double? _MDL;
  double? get MDL => _$this._MDL;
  set MDL(double? MDL) => _$this._MDL = MDL;

  double? _MGA;
  double? get MGA => _$this._MGA;
  set MGA(double? MGA) => _$this._MGA = MGA;

  double? _MKD;
  double? get MKD => _$this._MKD;
  set MKD(double? MKD) => _$this._MKD = MKD;

  double? _MMK;
  double? get MMK => _$this._MMK;
  set MMK(double? MMK) => _$this._MMK = MMK;

  double? _MNT;
  double? get MNT => _$this._MNT;
  set MNT(double? MNT) => _$this._MNT = MNT;

  double? _MOP;
  double? get MOP => _$this._MOP;
  set MOP(double? MOP) => _$this._MOP = MOP;

  double? _MRO;
  double? get MRO => _$this._MRO;
  set MRO(double? MRO) => _$this._MRO = MRO;

  double? _MRU;
  double? get MRU => _$this._MRU;
  set MRU(double? MRU) => _$this._MRU = MRU;

  double? _MUR;
  double? get MUR => _$this._MUR;
  set MUR(double? MUR) => _$this._MUR = MUR;

  double? _MVR;
  double? get MVR => _$this._MVR;
  set MVR(double? MVR) => _$this._MVR = MVR;

  double? _MWK;
  double? get MWK => _$this._MWK;
  set MWK(double? MWK) => _$this._MWK = MWK;

  double? _MXN;
  double? get MXN => _$this._MXN;
  set MXN(double? MXN) => _$this._MXN = MXN;

  double? _MYR;
  double? get MYR => _$this._MYR;
  set MYR(double? MYR) => _$this._MYR = MYR;

  double? _MZN;
  double? get MZN => _$this._MZN;
  set MZN(double? MZN) => _$this._MZN = MZN;

  double? _NAD;
  double? get NAD => _$this._NAD;
  set NAD(double? NAD) => _$this._NAD = NAD;

  double? _NGN;
  double? get NGN => _$this._NGN;
  set NGN(double? NGN) => _$this._NGN = NGN;

  double? _NIO;
  double? get NIO => _$this._NIO;
  set NIO(double? NIO) => _$this._NIO = NIO;

  double? _NOK;
  double? get NOK => _$this._NOK;
  set NOK(double? NOK) => _$this._NOK = NOK;

  double? _NPR;
  double? get NPR => _$this._NPR;
  set NPR(double? NPR) => _$this._NPR = NPR;

  double? _NZD;
  double? get NZD => _$this._NZD;
  set NZD(double? NZD) => _$this._NZD = NZD;

  double? _OMR;
  double? get OMR => _$this._OMR;
  set OMR(double? OMR) => _$this._OMR = OMR;

  double? _PAB;
  double? get PAB => _$this._PAB;
  set PAB(double? PAB) => _$this._PAB = PAB;

  double? _PEN;
  double? get PEN => _$this._PEN;
  set PEN(double? PEN) => _$this._PEN = PEN;

  double? _PGK;
  double? get PGK => _$this._PGK;
  set PGK(double? PGK) => _$this._PGK = PGK;

  double? _PHP;
  double? get PHP => _$this._PHP;
  set PHP(double? PHP) => _$this._PHP = PHP;

  double? _PKR;
  double? get PKR => _$this._PKR;
  set PKR(double? PKR) => _$this._PKR = PKR;

  double? _PLN;
  double? get PLN => _$this._PLN;
  set PLN(double? PLN) => _$this._PLN = PLN;

  double? _PYG;
  double? get PYG => _$this._PYG;
  set PYG(double? PYG) => _$this._PYG = PYG;

  double? _QAR;
  double? get QAR => _$this._QAR;
  set QAR(double? QAR) => _$this._QAR = QAR;

  double? _RON;
  double? get RON => _$this._RON;
  set RON(double? RON) => _$this._RON = RON;

  double? _RSD;
  double? get RSD => _$this._RSD;
  set RSD(double? RSD) => _$this._RSD = RSD;

  double? _RUB;
  double? get RUB => _$this._RUB;
  set RUB(double? RUB) => _$this._RUB = RUB;

  double? _RWF;
  double? get RWF => _$this._RWF;
  set RWF(double? RWF) => _$this._RWF = RWF;

  double? _SAR;
  double? get SAR => _$this._SAR;
  set SAR(double? SAR) => _$this._SAR = SAR;

  double? _SBD;
  double? get SBD => _$this._SBD;
  set SBD(double? SBD) => _$this._SBD = SBD;

  double? _SCR;
  double? get SCR => _$this._SCR;
  set SCR(double? SCR) => _$this._SCR = SCR;

  double? _SDG;
  double? get SDG => _$this._SDG;
  set SDG(double? SDG) => _$this._SDG = SDG;

  double? _SEK;
  double? get SEK => _$this._SEK;
  set SEK(double? SEK) => _$this._SEK = SEK;

  double? _SGD;
  double? get SGD => _$this._SGD;
  set SGD(double? SGD) => _$this._SGD = SGD;

  double? _SHP;
  double? get SHP => _$this._SHP;
  set SHP(double? SHP) => _$this._SHP = SHP;

  double? _SLL;
  double? get SLL => _$this._SLL;
  set SLL(double? SLL) => _$this._SLL = SLL;

  double? _SOS;
  double? get SOS => _$this._SOS;
  set SOS(double? SOS) => _$this._SOS = SOS;

  double? _SRD;
  double? get SRD => _$this._SRD;
  set SRD(double? SRD) => _$this._SRD = SRD;

  double? _SSP;
  double? get SSP => _$this._SSP;
  set SSP(double? SSP) => _$this._SSP = SSP;

  double? _STD;
  double? get STD => _$this._STD;
  set STD(double? STD) => _$this._STD = STD;

  double? _STN;
  double? get STN => _$this._STN;
  set STN(double? STN) => _$this._STN = STN;

  double? _SVC;
  double? get SVC => _$this._SVC;
  set SVC(double? SVC) => _$this._SVC = SVC;

  double? _SYP;
  double? get SYP => _$this._SYP;
  set SYP(double? SYP) => _$this._SYP = SYP;

  double? _SZL;
  double? get SZL => _$this._SZL;
  set SZL(double? SZL) => _$this._SZL = SZL;

  double? _THB;
  double? get THB => _$this._THB;
  set THB(double? THB) => _$this._THB = THB;

  double? _TJS;
  double? get TJS => _$this._TJS;
  set TJS(double? TJS) => _$this._TJS = TJS;

  double? _TMT;
  double? get TMT => _$this._TMT;
  set TMT(double? TMT) => _$this._TMT = TMT;

  double? _TND;
  double? get TND => _$this._TND;
  set TND(double? TND) => _$this._TND = TND;

  double? _TOP;
  double? get TOP => _$this._TOP;
  set TOP(double? TOP) => _$this._TOP = TOP;

  double? _TRY;
  double? get TRY => _$this._TRY;
  set TRY(double? TRY) => _$this._TRY = TRY;

  double? _TTD;
  double? get TTD => _$this._TTD;
  set TTD(double? TTD) => _$this._TTD = TTD;

  double? _TWD;
  double? get TWD => _$this._TWD;
  set TWD(double? TWD) => _$this._TWD = TWD;

  double? _TZS;
  double? get TZS => _$this._TZS;
  set TZS(double? TZS) => _$this._TZS = TZS;

  double? _UAH;
  double? get UAH => _$this._UAH;
  set UAH(double? UAH) => _$this._UAH = UAH;

  double? _UGX;
  double? get UGX => _$this._UGX;
  set UGX(double? UGX) => _$this._UGX = UGX;

  double? _USD;
  double? get USD => _$this._USD;
  set USD(double? USD) => _$this._USD = USD;

  double? _UYU;
  double? get UYU => _$this._UYU;
  set UYU(double? UYU) => _$this._UYU = UYU;

  double? _UZS;
  double? get UZS => _$this._UZS;
  set UZS(double? UZS) => _$this._UZS = UZS;

  double? _VEF;
  double? get VEF => _$this._VEF;
  set VEF(double? VEF) => _$this._VEF = VEF;

  double? _VES;
  double? get VES => _$this._VES;
  set VES(double? VES) => _$this._VES = VES;

  double? _VND;
  double? get VND => _$this._VND;
  set VND(double? VND) => _$this._VND = VND;

  double? _VUV;
  double? get VUV => _$this._VUV;
  set VUV(double? VUV) => _$this._VUV = VUV;

  double? _WST;
  double? get WST => _$this._WST;
  set WST(double? WST) => _$this._WST = WST;

  double? _XAF;
  double? get XAF => _$this._XAF;
  set XAF(double? XAF) => _$this._XAF = XAF;

  double? _XAG;
  double? get XAG => _$this._XAG;
  set XAG(double? XAG) => _$this._XAG = XAG;

  double? _XAU;
  double? get XAU => _$this._XAU;
  set XAU(double? XAU) => _$this._XAU = XAU;

  double? _XCD;
  double? get XCD => _$this._XCD;
  set XCD(double? XCD) => _$this._XCD = XCD;

  double? _XDR;
  double? get XDR => _$this._XDR;
  set XDR(double? XDR) => _$this._XDR = XDR;

  double? _XOF;
  double? get XOF => _$this._XOF;
  set XOF(double? XOF) => _$this._XOF = XOF;

  double? _XPD;
  double? get XPD => _$this._XPD;
  set XPD(double? XPD) => _$this._XPD = XPD;

  double? _XPF;
  double? get XPF => _$this._XPF;
  set XPF(double? XPF) => _$this._XPF = XPF;

  double? _XPT;
  double? get XPT => _$this._XPT;
  set XPT(double? XPT) => _$this._XPT = XPT;

  double? _YER;
  double? get YER => _$this._YER;
  set YER(double? YER) => _$this._YER = YER;

  double? _ZAR;
  double? get ZAR => _$this._ZAR;
  set ZAR(double? ZAR) => _$this._ZAR = ZAR;

  double? _ZMW;
  double? get ZMW => _$this._ZMW;
  set ZMW(double? ZMW) => _$this._ZMW = ZMW;

  double? _ZWL;
  double? get ZWL => _$this._ZWL;
  set ZWL(double? ZWL) => _$this._ZWL = ZWL;

  CurrencyBaseDataBuilder();

  CurrencyBaseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _AED = $v.AED;
      _AFN = $v.AFN;
      _ALL = $v.ALL;
      _AMD = $v.AMD;
      _ANG = $v.ANG;
      _AOA = $v.AOA;
      _ARS = $v.ARS;
      _AUD = $v.AUD;
      _AWG = $v.AWG;
      _AZN = $v.AZN;
      _BAM = $v.BAM;
      _BBD = $v.BBD;
      _BDT = $v.BDT;
      _BGN = $v.BGN;
      _BHD = $v.BHD;
      _BIF = $v.BIF;
      _BMD = $v.BMD;
      _BND = $v.BND;
      _BOB = $v.BOB;
      _BRL = $v.BRL;
      _BSD = $v.BSD;
      _BTC = $v.BTC;
      _BTN = $v.BTN;
      _BWP = $v.BWP;
      _BYN = $v.BYN;
      _BZD = $v.BZD;
      _CAD = $v.CAD;
      _CDF = $v.CDF;
      _CHF = $v.CHF;
      _CLF = $v.CLF;
      _CLP = $v.CLP;
      _CNH = $v.CNH;
      _CNY = $v.CNY;
      _COP = $v.COP;
      _CRC = $v.CRC;
      _CUC = $v.CUC;
      _CUP = $v.CUP;
      _CVE = $v.CVE;
      _CZK = $v.CZK;
      _DJF = $v.DJF;
      _DKK = $v.DKK;
      _DOP = $v.DOP;
      _DZD = $v.DZD;
      _EGP = $v.EGP;
      _ERN = $v.ERN;
      _ETB = $v.ETB;
      _EUR = $v.EUR;
      _FJD = $v.FJD;
      _FKP = $v.FKP;
      _GBP = $v.GBP;
      _GEL = $v.GEL;
      _GGP = $v.GGP;
      _GHS = $v.GHS;
      _GIP = $v.GIP;
      _GMD = $v.GMD;
      _GNF = $v.GNF;
      _GTQ = $v.GTQ;
      _GYD = $v.GYD;
      _HKD = $v.HKD;
      _HNL = $v.HNL;
      _HRK = $v.HRK;
      _HTG = $v.HTG;
      _HUF = $v.HUF;
      _IDR = $v.IDR;
      _ILS = $v.ILS;
      _IMP = $v.IMP;
      _INR = $v.INR;
      _IQD = $v.IQD;
      _IRR = $v.IRR;
      _ISK = $v.ISK;
      _JEP = $v.JEP;
      _JMD = $v.JMD;
      _JOD = $v.JOD;
      _JPY = $v.JPY;
      _KES = $v.KES;
      _KGS = $v.KGS;
      _KHR = $v.KHR;
      _KMF = $v.KMF;
      _KPW = $v.KPW;
      _KRW = $v.KRW;
      _KWD = $v.KWD;
      _KYD = $v.KYD;
      _KZT = $v.KZT;
      _LAK = $v.LAK;
      _LBP = $v.LBP;
      _LKR = $v.LKR;
      _LRD = $v.LRD;
      _LSL = $v.LSL;
      _LYD = $v.LYD;
      _MAD = $v.MAD;
      _MDL = $v.MDL;
      _MGA = $v.MGA;
      _MKD = $v.MKD;
      _MMK = $v.MMK;
      _MNT = $v.MNT;
      _MOP = $v.MOP;
      _MRO = $v.MRO;
      _MRU = $v.MRU;
      _MUR = $v.MUR;
      _MVR = $v.MVR;
      _MWK = $v.MWK;
      _MXN = $v.MXN;
      _MYR = $v.MYR;
      _MZN = $v.MZN;
      _NAD = $v.NAD;
      _NGN = $v.NGN;
      _NIO = $v.NIO;
      _NOK = $v.NOK;
      _NPR = $v.NPR;
      _NZD = $v.NZD;
      _OMR = $v.OMR;
      _PAB = $v.PAB;
      _PEN = $v.PEN;
      _PGK = $v.PGK;
      _PHP = $v.PHP;
      _PKR = $v.PKR;
      _PLN = $v.PLN;
      _PYG = $v.PYG;
      _QAR = $v.QAR;
      _RON = $v.RON;
      _RSD = $v.RSD;
      _RUB = $v.RUB;
      _RWF = $v.RWF;
      _SAR = $v.SAR;
      _SBD = $v.SBD;
      _SCR = $v.SCR;
      _SDG = $v.SDG;
      _SEK = $v.SEK;
      _SGD = $v.SGD;
      _SHP = $v.SHP;
      _SLL = $v.SLL;
      _SOS = $v.SOS;
      _SRD = $v.SRD;
      _SSP = $v.SSP;
      _STD = $v.STD;
      _STN = $v.STN;
      _SVC = $v.SVC;
      _SYP = $v.SYP;
      _SZL = $v.SZL;
      _THB = $v.THB;
      _TJS = $v.TJS;
      _TMT = $v.TMT;
      _TND = $v.TND;
      _TOP = $v.TOP;
      _TRY = $v.TRY;
      _TTD = $v.TTD;
      _TWD = $v.TWD;
      _TZS = $v.TZS;
      _UAH = $v.UAH;
      _UGX = $v.UGX;
      _USD = $v.USD;
      _UYU = $v.UYU;
      _UZS = $v.UZS;
      _VEF = $v.VEF;
      _VES = $v.VES;
      _VND = $v.VND;
      _VUV = $v.VUV;
      _WST = $v.WST;
      _XAF = $v.XAF;
      _XAG = $v.XAG;
      _XAU = $v.XAU;
      _XCD = $v.XCD;
      _XDR = $v.XDR;
      _XOF = $v.XOF;
      _XPD = $v.XPD;
      _XPF = $v.XPF;
      _XPT = $v.XPT;
      _YER = $v.YER;
      _ZAR = $v.ZAR;
      _ZMW = $v.ZMW;
      _ZWL = $v.ZWL;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrencyBaseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrencyBaseData;
  }

  @override
  void update(void Function(CurrencyBaseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CurrencyBaseData build() => _build();

  _$CurrencyBaseData _build() {
    final _$result = _$v ??
        new _$CurrencyBaseData._(
            AED: BuiltValueNullFieldError.checkNotNull(
                AED, r'CurrencyBaseData', 'AED'),
            AFN: BuiltValueNullFieldError.checkNotNull(
                AFN, r'CurrencyBaseData', 'AFN'),
            ALL: BuiltValueNullFieldError.checkNotNull(
                ALL, r'CurrencyBaseData', 'ALL'),
            AMD: BuiltValueNullFieldError.checkNotNull(
                AMD, r'CurrencyBaseData', 'AMD'),
            ANG: BuiltValueNullFieldError.checkNotNull(
                ANG, r'CurrencyBaseData', 'ANG'),
            AOA: BuiltValueNullFieldError.checkNotNull(
                AOA, r'CurrencyBaseData', 'AOA'),
            ARS: BuiltValueNullFieldError.checkNotNull(
                ARS, r'CurrencyBaseData', 'ARS'),
            AUD: BuiltValueNullFieldError.checkNotNull(
                AUD, r'CurrencyBaseData', 'AUD'),
            AWG: BuiltValueNullFieldError.checkNotNull(
                AWG, r'CurrencyBaseData', 'AWG'),
            AZN: BuiltValueNullFieldError.checkNotNull(
                AZN, r'CurrencyBaseData', 'AZN'),
            BAM: BuiltValueNullFieldError.checkNotNull(
                BAM, r'CurrencyBaseData', 'BAM'),
            BBD: BuiltValueNullFieldError.checkNotNull(
                BBD, r'CurrencyBaseData', 'BBD'),
            BDT: BuiltValueNullFieldError.checkNotNull(
                BDT, r'CurrencyBaseData', 'BDT'),
            BGN: BuiltValueNullFieldError.checkNotNull(BGN, r'CurrencyBaseData', 'BGN'),
            BHD: BuiltValueNullFieldError.checkNotNull(BHD, r'CurrencyBaseData', 'BHD'),
            BIF: BuiltValueNullFieldError.checkNotNull(BIF, r'CurrencyBaseData', 'BIF'),
            BMD: BuiltValueNullFieldError.checkNotNull(BMD, r'CurrencyBaseData', 'BMD'),
            BND: BuiltValueNullFieldError.checkNotNull(BND, r'CurrencyBaseData', 'BND'),
            BOB: BuiltValueNullFieldError.checkNotNull(BOB, r'CurrencyBaseData', 'BOB'),
            BRL: BuiltValueNullFieldError.checkNotNull(BRL, r'CurrencyBaseData', 'BRL'),
            BSD: BuiltValueNullFieldError.checkNotNull(BSD, r'CurrencyBaseData', 'BSD'),
            BTC: BuiltValueNullFieldError.checkNotNull(BTC, r'CurrencyBaseData', 'BTC'),
            BTN: BuiltValueNullFieldError.checkNotNull(BTN, r'CurrencyBaseData', 'BTN'),
            BWP: BuiltValueNullFieldError.checkNotNull(BWP, r'CurrencyBaseData', 'BWP'),
            BYN: BuiltValueNullFieldError.checkNotNull(BYN, r'CurrencyBaseData', 'BYN'),
            BZD: BuiltValueNullFieldError.checkNotNull(BZD, r'CurrencyBaseData', 'BZD'),
            CAD: BuiltValueNullFieldError.checkNotNull(CAD, r'CurrencyBaseData', 'CAD'),
            CDF: BuiltValueNullFieldError.checkNotNull(CDF, r'CurrencyBaseData', 'CDF'),
            CHF: BuiltValueNullFieldError.checkNotNull(CHF, r'CurrencyBaseData', 'CHF'),
            CLF: BuiltValueNullFieldError.checkNotNull(CLF, r'CurrencyBaseData', 'CLF'),
            CLP: BuiltValueNullFieldError.checkNotNull(CLP, r'CurrencyBaseData', 'CLP'),
            CNH: BuiltValueNullFieldError.checkNotNull(CNH, r'CurrencyBaseData', 'CNH'),
            CNY: BuiltValueNullFieldError.checkNotNull(CNY, r'CurrencyBaseData', 'CNY'),
            COP: BuiltValueNullFieldError.checkNotNull(COP, r'CurrencyBaseData', 'COP'),
            CRC: BuiltValueNullFieldError.checkNotNull(CRC, r'CurrencyBaseData', 'CRC'),
            CUC: BuiltValueNullFieldError.checkNotNull(CUC, r'CurrencyBaseData', 'CUC'),
            CUP: BuiltValueNullFieldError.checkNotNull(CUP, r'CurrencyBaseData', 'CUP'),
            CVE: BuiltValueNullFieldError.checkNotNull(CVE, r'CurrencyBaseData', 'CVE'),
            CZK: BuiltValueNullFieldError.checkNotNull(CZK, r'CurrencyBaseData', 'CZK'),
            DJF: BuiltValueNullFieldError.checkNotNull(DJF, r'CurrencyBaseData', 'DJF'),
            DKK: BuiltValueNullFieldError.checkNotNull(DKK, r'CurrencyBaseData', 'DKK'),
            DOP: BuiltValueNullFieldError.checkNotNull(DOP, r'CurrencyBaseData', 'DOP'),
            DZD: BuiltValueNullFieldError.checkNotNull(DZD, r'CurrencyBaseData', 'DZD'),
            EGP: BuiltValueNullFieldError.checkNotNull(EGP, r'CurrencyBaseData', 'EGP'),
            ERN: BuiltValueNullFieldError.checkNotNull(ERN, r'CurrencyBaseData', 'ERN'),
            ETB: BuiltValueNullFieldError.checkNotNull(ETB, r'CurrencyBaseData', 'ETB'),
            EUR: BuiltValueNullFieldError.checkNotNull(EUR, r'CurrencyBaseData', 'EUR'),
            FJD: BuiltValueNullFieldError.checkNotNull(FJD, r'CurrencyBaseData', 'FJD'),
            FKP: BuiltValueNullFieldError.checkNotNull(FKP, r'CurrencyBaseData', 'FKP'),
            GBP: BuiltValueNullFieldError.checkNotNull(GBP, r'CurrencyBaseData', 'GBP'),
            GEL: BuiltValueNullFieldError.checkNotNull(GEL, r'CurrencyBaseData', 'GEL'),
            GGP: BuiltValueNullFieldError.checkNotNull(GGP, r'CurrencyBaseData', 'GGP'),
            GHS: BuiltValueNullFieldError.checkNotNull(GHS, r'CurrencyBaseData', 'GHS'),
            GIP: BuiltValueNullFieldError.checkNotNull(GIP, r'CurrencyBaseData', 'GIP'),
            GMD: BuiltValueNullFieldError.checkNotNull(GMD, r'CurrencyBaseData', 'GMD'),
            GNF: BuiltValueNullFieldError.checkNotNull(GNF, r'CurrencyBaseData', 'GNF'),
            GTQ: BuiltValueNullFieldError.checkNotNull(GTQ, r'CurrencyBaseData', 'GTQ'),
            GYD: BuiltValueNullFieldError.checkNotNull(GYD, r'CurrencyBaseData', 'GYD'),
            HKD: BuiltValueNullFieldError.checkNotNull(HKD, r'CurrencyBaseData', 'HKD'),
            HNL: BuiltValueNullFieldError.checkNotNull(HNL, r'CurrencyBaseData', 'HNL'),
            HRK: BuiltValueNullFieldError.checkNotNull(HRK, r'CurrencyBaseData', 'HRK'),
            HTG: BuiltValueNullFieldError.checkNotNull(HTG, r'CurrencyBaseData', 'HTG'),
            HUF: BuiltValueNullFieldError.checkNotNull(HUF, r'CurrencyBaseData', 'HUF'),
            IDR: BuiltValueNullFieldError.checkNotNull(IDR, r'CurrencyBaseData', 'IDR'),
            ILS: BuiltValueNullFieldError.checkNotNull(ILS, r'CurrencyBaseData', 'ILS'),
            IMP: BuiltValueNullFieldError.checkNotNull(IMP, r'CurrencyBaseData', 'IMP'),
            INR: BuiltValueNullFieldError.checkNotNull(INR, r'CurrencyBaseData', 'INR'),
            IQD: BuiltValueNullFieldError.checkNotNull(IQD, r'CurrencyBaseData', 'IQD'),
            IRR: BuiltValueNullFieldError.checkNotNull(IRR, r'CurrencyBaseData', 'IRR'),
            ISK: BuiltValueNullFieldError.checkNotNull(ISK, r'CurrencyBaseData', 'ISK'),
            JEP: BuiltValueNullFieldError.checkNotNull(JEP, r'CurrencyBaseData', 'JEP'),
            JMD: BuiltValueNullFieldError.checkNotNull(JMD, r'CurrencyBaseData', 'JMD'),
            JOD: BuiltValueNullFieldError.checkNotNull(JOD, r'CurrencyBaseData', 'JOD'),
            JPY: BuiltValueNullFieldError.checkNotNull(JPY, r'CurrencyBaseData', 'JPY'),
            KES: BuiltValueNullFieldError.checkNotNull(KES, r'CurrencyBaseData', 'KES'),
            KGS: BuiltValueNullFieldError.checkNotNull(KGS, r'CurrencyBaseData', 'KGS'),
            KHR: BuiltValueNullFieldError.checkNotNull(KHR, r'CurrencyBaseData', 'KHR'),
            KMF: BuiltValueNullFieldError.checkNotNull(KMF, r'CurrencyBaseData', 'KMF'),
            KPW: BuiltValueNullFieldError.checkNotNull(KPW, r'CurrencyBaseData', 'KPW'),
            KRW: BuiltValueNullFieldError.checkNotNull(KRW, r'CurrencyBaseData', 'KRW'),
            KWD: BuiltValueNullFieldError.checkNotNull(KWD, r'CurrencyBaseData', 'KWD'),
            KYD: BuiltValueNullFieldError.checkNotNull(KYD, r'CurrencyBaseData', 'KYD'),
            KZT: BuiltValueNullFieldError.checkNotNull(KZT, r'CurrencyBaseData', 'KZT'),
            LAK: BuiltValueNullFieldError.checkNotNull(LAK, r'CurrencyBaseData', 'LAK'),
            LBP: BuiltValueNullFieldError.checkNotNull(LBP, r'CurrencyBaseData', 'LBP'),
            LKR: BuiltValueNullFieldError.checkNotNull(LKR, r'CurrencyBaseData', 'LKR'),
            LRD: BuiltValueNullFieldError.checkNotNull(LRD, r'CurrencyBaseData', 'LRD'),
            LSL: BuiltValueNullFieldError.checkNotNull(LSL, r'CurrencyBaseData', 'LSL'),
            LYD: BuiltValueNullFieldError.checkNotNull(LYD, r'CurrencyBaseData', 'LYD'),
            MAD: BuiltValueNullFieldError.checkNotNull(MAD, r'CurrencyBaseData', 'MAD'),
            MDL: BuiltValueNullFieldError.checkNotNull(MDL, r'CurrencyBaseData', 'MDL'),
            MGA: BuiltValueNullFieldError.checkNotNull(MGA, r'CurrencyBaseData', 'MGA'),
            MKD: BuiltValueNullFieldError.checkNotNull(MKD, r'CurrencyBaseData', 'MKD'),
            MMK: BuiltValueNullFieldError.checkNotNull(MMK, r'CurrencyBaseData', 'MMK'),
            MNT: BuiltValueNullFieldError.checkNotNull(MNT, r'CurrencyBaseData', 'MNT'),
            MOP: BuiltValueNullFieldError.checkNotNull(MOP, r'CurrencyBaseData', 'MOP'),
            MRO: BuiltValueNullFieldError.checkNotNull(MRO, r'CurrencyBaseData', 'MRO'),
            MRU: BuiltValueNullFieldError.checkNotNull(MRU, r'CurrencyBaseData', 'MRU'),
            MUR: BuiltValueNullFieldError.checkNotNull(MUR, r'CurrencyBaseData', 'MUR'),
            MVR: BuiltValueNullFieldError.checkNotNull(MVR, r'CurrencyBaseData', 'MVR'),
            MWK: BuiltValueNullFieldError.checkNotNull(MWK, r'CurrencyBaseData', 'MWK'),
            MXN: BuiltValueNullFieldError.checkNotNull(MXN, r'CurrencyBaseData', 'MXN'),
            MYR: BuiltValueNullFieldError.checkNotNull(MYR, r'CurrencyBaseData', 'MYR'),
            MZN: BuiltValueNullFieldError.checkNotNull(MZN, r'CurrencyBaseData', 'MZN'),
            NAD: BuiltValueNullFieldError.checkNotNull(NAD, r'CurrencyBaseData', 'NAD'),
            NGN: BuiltValueNullFieldError.checkNotNull(NGN, r'CurrencyBaseData', 'NGN'),
            NIO: BuiltValueNullFieldError.checkNotNull(NIO, r'CurrencyBaseData', 'NIO'),
            NOK: BuiltValueNullFieldError.checkNotNull(NOK, r'CurrencyBaseData', 'NOK'),
            NPR: BuiltValueNullFieldError.checkNotNull(NPR, r'CurrencyBaseData', 'NPR'),
            NZD: BuiltValueNullFieldError.checkNotNull(NZD, r'CurrencyBaseData', 'NZD'),
            OMR: BuiltValueNullFieldError.checkNotNull(OMR, r'CurrencyBaseData', 'OMR'),
            PAB: BuiltValueNullFieldError.checkNotNull(PAB, r'CurrencyBaseData', 'PAB'),
            PEN: BuiltValueNullFieldError.checkNotNull(PEN, r'CurrencyBaseData', 'PEN'),
            PGK: BuiltValueNullFieldError.checkNotNull(PGK, r'CurrencyBaseData', 'PGK'),
            PHP: BuiltValueNullFieldError.checkNotNull(PHP, r'CurrencyBaseData', 'PHP'),
            PKR: BuiltValueNullFieldError.checkNotNull(PKR, r'CurrencyBaseData', 'PKR'),
            PLN: BuiltValueNullFieldError.checkNotNull(PLN, r'CurrencyBaseData', 'PLN'),
            PYG: BuiltValueNullFieldError.checkNotNull(PYG, r'CurrencyBaseData', 'PYG'),
            QAR: BuiltValueNullFieldError.checkNotNull(QAR, r'CurrencyBaseData', 'QAR'),
            RON: BuiltValueNullFieldError.checkNotNull(RON, r'CurrencyBaseData', 'RON'),
            RSD: BuiltValueNullFieldError.checkNotNull(RSD, r'CurrencyBaseData', 'RSD'),
            RUB: BuiltValueNullFieldError.checkNotNull(RUB, r'CurrencyBaseData', 'RUB'),
            RWF: BuiltValueNullFieldError.checkNotNull(RWF, r'CurrencyBaseData', 'RWF'),
            SAR: BuiltValueNullFieldError.checkNotNull(SAR, r'CurrencyBaseData', 'SAR'),
            SBD: BuiltValueNullFieldError.checkNotNull(SBD, r'CurrencyBaseData', 'SBD'),
            SCR: BuiltValueNullFieldError.checkNotNull(SCR, r'CurrencyBaseData', 'SCR'),
            SDG: BuiltValueNullFieldError.checkNotNull(SDG, r'CurrencyBaseData', 'SDG'),
            SEK: BuiltValueNullFieldError.checkNotNull(SEK, r'CurrencyBaseData', 'SEK'),
            SGD: BuiltValueNullFieldError.checkNotNull(SGD, r'CurrencyBaseData', 'SGD'),
            SHP: BuiltValueNullFieldError.checkNotNull(SHP, r'CurrencyBaseData', 'SHP'),
            SLL: BuiltValueNullFieldError.checkNotNull(SLL, r'CurrencyBaseData', 'SLL'),
            SOS: BuiltValueNullFieldError.checkNotNull(SOS, r'CurrencyBaseData', 'SOS'),
            SRD: BuiltValueNullFieldError.checkNotNull(SRD, r'CurrencyBaseData', 'SRD'),
            SSP: BuiltValueNullFieldError.checkNotNull(SSP, r'CurrencyBaseData', 'SSP'),
            STD: BuiltValueNullFieldError.checkNotNull(STD, r'CurrencyBaseData', 'STD'),
            STN: BuiltValueNullFieldError.checkNotNull(STN, r'CurrencyBaseData', 'STN'),
            SVC: BuiltValueNullFieldError.checkNotNull(SVC, r'CurrencyBaseData', 'SVC'),
            SYP: BuiltValueNullFieldError.checkNotNull(SYP, r'CurrencyBaseData', 'SYP'),
            SZL: BuiltValueNullFieldError.checkNotNull(SZL, r'CurrencyBaseData', 'SZL'),
            THB: BuiltValueNullFieldError.checkNotNull(THB, r'CurrencyBaseData', 'THB'),
            TJS: BuiltValueNullFieldError.checkNotNull(TJS, r'CurrencyBaseData', 'TJS'),
            TMT: BuiltValueNullFieldError.checkNotNull(TMT, r'CurrencyBaseData', 'TMT'),
            TND: BuiltValueNullFieldError.checkNotNull(TND, r'CurrencyBaseData', 'TND'),
            TOP: BuiltValueNullFieldError.checkNotNull(TOP, r'CurrencyBaseData', 'TOP'),
            TRY: BuiltValueNullFieldError.checkNotNull(TRY, r'CurrencyBaseData', 'TRY'),
            TTD: BuiltValueNullFieldError.checkNotNull(TTD, r'CurrencyBaseData', 'TTD'),
            TWD: BuiltValueNullFieldError.checkNotNull(TWD, r'CurrencyBaseData', 'TWD'),
            TZS: BuiltValueNullFieldError.checkNotNull(TZS, r'CurrencyBaseData', 'TZS'),
            UAH: BuiltValueNullFieldError.checkNotNull(UAH, r'CurrencyBaseData', 'UAH'),
            UGX: BuiltValueNullFieldError.checkNotNull(UGX, r'CurrencyBaseData', 'UGX'),
            USD: BuiltValueNullFieldError.checkNotNull(USD, r'CurrencyBaseData', 'USD'),
            UYU: BuiltValueNullFieldError.checkNotNull(UYU, r'CurrencyBaseData', 'UYU'),
            UZS: BuiltValueNullFieldError.checkNotNull(UZS, r'CurrencyBaseData', 'UZS'),
            VEF: BuiltValueNullFieldError.checkNotNull(VEF, r'CurrencyBaseData', 'VEF'),
            VES: BuiltValueNullFieldError.checkNotNull(VES, r'CurrencyBaseData', 'VES'),
            VND: BuiltValueNullFieldError.checkNotNull(VND, r'CurrencyBaseData', 'VND'),
            VUV: BuiltValueNullFieldError.checkNotNull(VUV, r'CurrencyBaseData', 'VUV'),
            WST: BuiltValueNullFieldError.checkNotNull(WST, r'CurrencyBaseData', 'WST'),
            XAF: BuiltValueNullFieldError.checkNotNull(XAF, r'CurrencyBaseData', 'XAF'),
            XAG: BuiltValueNullFieldError.checkNotNull(XAG, r'CurrencyBaseData', 'XAG'),
            XAU: BuiltValueNullFieldError.checkNotNull(XAU, r'CurrencyBaseData', 'XAU'),
            XCD: BuiltValueNullFieldError.checkNotNull(XCD, r'CurrencyBaseData', 'XCD'),
            XDR: BuiltValueNullFieldError.checkNotNull(XDR, r'CurrencyBaseData', 'XDR'),
            XOF: BuiltValueNullFieldError.checkNotNull(XOF, r'CurrencyBaseData', 'XOF'),
            XPD: BuiltValueNullFieldError.checkNotNull(XPD, r'CurrencyBaseData', 'XPD'),
            XPF: BuiltValueNullFieldError.checkNotNull(XPF, r'CurrencyBaseData', 'XPF'),
            XPT: BuiltValueNullFieldError.checkNotNull(XPT, r'CurrencyBaseData', 'XPT'),
            YER: BuiltValueNullFieldError.checkNotNull(YER, r'CurrencyBaseData', 'YER'),
            ZAR: BuiltValueNullFieldError.checkNotNull(ZAR, r'CurrencyBaseData', 'ZAR'),
            ZMW: BuiltValueNullFieldError.checkNotNull(ZMW, r'CurrencyBaseData', 'ZMW'),
            ZWL: BuiltValueNullFieldError.checkNotNull(ZWL, r'CurrencyBaseData', 'ZWL'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
