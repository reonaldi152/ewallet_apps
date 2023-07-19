import 'dart:convert';

import 'package:currency_picker/currency_picker.dart';
import 'package:ewallet_apps/models/info_rates_model.dart';
import 'package:ewallet_apps/models/symbols_rates_models.dart';
import 'package:ewallet_apps/services/convert_rate_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ewallet_apps/blocs/currency_converter/currency_converter_bloc.dart';
import 'package:ewallet_apps/blocs/currency_converter/currency_converter_event.dart';
import 'package:ewallet_apps/blocs/currency_converter/currency_converter_state.dart';
import 'package:ewallet_apps/ui/widgets/chart_widget.dart';

import '../widgets/buttons.dart';
import '../widgets/textformfield_outline.dart';

class ConverterPage extends StatefulWidget {
  @override
  _ConverterPageState createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage>
    with SingleTickerProviderStateMixin {
  String _fromCurrencyCode = "USD";
  String? _currencyName;

  String _toCurrencyCode = "IDR";

  AnimationController? _controller;

  TextEditingController? _editingController;
  FocusNode? _focusNode;
  final TextEditingController _amountController = TextEditingController();

  dynamic base = "USD";
  dynamic amount = "1";

  @override
  void initState() {
    getInfoRates(base: base, amount: _amountController.text);
    getSymbols();
    _editingController = TextEditingController();
    _focusNode = FocusNode();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    super.initState();
  }

  @override
  void dispose() {
    _focusNode?.dispose();
    _controller?.dispose();
    _editingController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                inputTextWidget(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                          onTap: _openCurrencyPickerDialogFrom,
                          child: fromCurrencyItemWidget()),
                      iconWidget(),
                      GestureDetector(
                          onTap: _openCurrencyPickerDialogTo,
                          child: toCurrencyItemWidget()),
                      buttonWidget(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                resultWidget(),
                SizedBox(
                  height: 10,
                ),
                fromResultWidget(),
                SizedBox(
                  height: 20,
                ),
                // daysRowItem(),
                SizedBox(
                  height: 20,
                ),
                // ChartWidget(),
                Row(
                  children: [
                    Text("Info Kurs Berdasarkan : "),
                    Text("$amount $base"),
                  ],
                ),

                TextFormFieldOutline(
                  title: "Isi Nominal",
                  titleStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                  hintText: "Masukkan nominal",
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  controller: _amountController,
                  //keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nominal harus di isi';
                    }
                    /*if (Fzregex.hasMatch(value, FzPattern.phone)) {
                          return 'No. Telepon tidak valid';
                        }*/
                    return null;
                  },
                  // focusedBorder: const OutlineInputBorder(
                  //   borderSide: BorderSide(color: AppColor.colorPrimary),
                  //   borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  // ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                    onTap: _openCurrencyPickerDialogFrom2,
                    child: fromCurrencyItemWidget()),
                SizedBox(height: 24),

                CustomFilledButton(
                  title: 'Ganti',
                  height: 38,
                  width: 100,
                  onPressed: () {
                    getInfoRates(base: base, amount: _amountController.text);
                    setState(() {
                      amount = _amountController.text;
                    });
                  },
                ),
                SizedBox(height: 24),

                (_infoRatesModel == null)
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _infoRatesModel?.rates?.length,
                        itemBuilder: (context, index) {
                          dynamic nameCountry;
                          var country = _infoRatesModel!.rates!.keys.toList();

                          // debugPrint(
                          //     "ini ya ${_symbolsRatesModel?.symbols?.keys.toList()[index] == country[index]}");

                          // debugPrint(country.toString());

                          // var nameCurrency = country[index].contains();
                          if (country[index].toString() == "AUD") {
                            nameCountry = "Australian Dollar";
                          } else if (country[index].toString() == "BND") {
                            nameCountry = "Brunei Dollar";
                          } else if (country[index].toString() == "CAD") {
                            nameCountry = "Canada Dollar";
                          } else if (country[index].toString() == "CHF") {
                            nameCountry = "Swiss Franc";
                          } else if (country[index].toString() == "CNH") {
                            nameCountry = "Chinese Yuan (Offshore)";
                          } else if (country[index].toString() == "CNY") {
                            nameCountry = "Chinese Yuan";
                          } else if (country[index].toString() == "DKK") {
                            nameCountry = "Denmark Krone ";
                          } else if (country[index].toString() == "EUR") {
                            nameCountry = "Europe Euro";
                          } else if (country[index].toString() == "GBP") {
                            nameCountry = "British Pound Sterling";
                          } else if (country[index].toString() == "HKD") {
                            nameCountry = "Hong Kong Dollar";
                          } else if (country[index].toString() == "JPY") {
                            nameCountry = "Japanese Yen";
                          } else if (country[index].toString() == "KRW") {
                            nameCountry = "South Korean Won";
                          } else if (country[index].toString() == "KWD") {
                            nameCountry = "Kuwait Dinar";
                          } else if (country[index].toString() == "LAK") {
                            nameCountry = "Laos Kip";
                          } else if (country[index].toString() == "MYR") {
                            nameCountry = "Malaysian Ringgit";
                          } else if (country[index].toString() == "NOK") {
                            nameCountry = "Norwegian Krone";
                          } else if (country[index].toString() == "NZD") {
                            nameCountry = "New Zealand Dollar";
                          } else if (country[index].toString() == "PGK") {
                            nameCountry = "Papua New Guinean Kina";
                          } else if (country[index].toString() == "PHP") {
                            nameCountry = "Philippine Peso";
                          } else if (country[index].toString() == "SAR") {
                            nameCountry = "Saudi Riyal";
                          } else if (country[index].toString() == "SEK") {
                            nameCountry = "Swedia Krona";
                          } else if (country[index].toString() == "SGD") {
                            nameCountry = "Singapore Dollar";
                          } else if (country[index].toString() == "THB") {
                            nameCountry = "Thailand Baht";
                          } else if (country[index].toString() == "USD") {
                            nameCountry = "United States Dollar";
                          } else if (country[index].toString() == "VND") {
                            nameCountry = "Vietnam Dong";
                          } else {
                            nameCountry = "";
                          }
                          var rates = _infoRatesModel!.rates!.values.toList();
                          return Container(
                            margin: EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(10), // radius of 10
                                color: Color(
                                    0xffE3E5FE) // green as background color
                                ),
                            width: double.infinity,
                            padding: EdgeInsets.only(),
                            child: ListTile(
                              // leading: CircleAvatar(
                              //     backgroundImage:
                              //         AssetImage('assets/convert.png')),
                              title: Text(country[index].toString()),
                              subtitle: Text(nameCountry),
                              trailing: Text(rates[index].toString()),
                            ),
                          );
                        },
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InfoRatesModel? _infoRatesModel;
  getInfoRates({base, amount}) async {
    ConvertRateService().getInfoRates(base, amount).then((value) {
      if (value != null) {
        debugPrint("value rates ${value.rates}");

        setState(() {
          _infoRatesModel = value;
        });
        // try {
        //   Map<String, dynamic> jsonData = jsonDecode(value.toString());
        //   InfoRatesModel infoRatesModel = InfoRatesModel.fromJson(jsonData);

        //   setState(() {
        //     _infoRatesModel = infoRatesModel;
        //   });
        // } catch (e) {
        //   debugPrint("JSON parsing error: $e");
        // }
      }
    });
  }

  SymbolsRatesModel? _symbolsRatesModel;
  getSymbols() async {
    ConvertRateService().getSymbols().then((value) {
      setState(() {
        _symbolsRatesModel = value;
      });
    });
  }

  Widget toCurrencyItemWidget() {
    return Row(
      children: <Widget>[
        Icon(Icons.keyboard_arrow_down),
        Text(_toCurrencyCode)
      ],
    );
  }

  Widget fromCurrencyItemWidget() {
    return Row(
      children: <Widget>[
        Icon(Icons.keyboard_arrow_down),
        Text(_fromCurrencyCode)
      ],
    );
  }

  // Widget _buildDropDownItem(Country country) {
  //   return Container(
  //       child: Row(
  //     children: <Widget>[
  //       CurrencyPickerUtils.getDefaultFlagImage(country),
  //       SizedBox(
  //         width: 10.0,
  //       ),
  //       Text("${country.currencyCode} (${country.isoCode})"),
  //     ],
  //   ));
  // }

  void _openCurrencyPickerDialogTo() {
    showCurrencyPicker(
      context: context,
      showFlag: true,
      showCurrencyName: true,
      showCurrencyCode: true,
      onSelect: (Currency currency) {
        print('Select currency to : ${currency.name}');
        print('Select currency to : ${currency.code}');
        if (mounted) {
          setState(() {
            _toCurrencyCode = currency.code;
          });
        }
      },
    );
  }

  void _openCurrencyPickerDialogFrom() {
    showCurrencyPicker(
      context: context,
      showFlag: true,
      showCurrencyName: true,
      showCurrencyCode: true,
      onSelect: (Currency currency) {
        print('Select from currency: ${currency.name}');
        print('Select from currency code: ${currency.code}');
        print('Select from flag: ${currency.flag}');
        if (mounted) {
          setState(() {
            _fromCurrencyCode = currency.code;
            _currencyName = currency.name;
            base = currency.code.toString();
          });
        }
      },
    );
  }

  void _openCurrencyPickerDialogFrom2() {
    showCurrencyPicker(
      context: context,
      showFlag: true,
      showCurrencyName: true,
      showCurrencyCode: true,
      onSelect: (Currency currency) {
        print('Select from currency: ${currency.name}');
        print('Select from currency code: ${currency.code}');
        print('Select from flag: ${currency.flag}');
        if (mounted) {
          setState(() {
            base = currency.code.toString();
          });
        }
      },
    );
  }

  Widget iconWidget() {
    return Container(
      child: Stack(
        children: <Widget>[
          AnimatedBuilder(
            animation: _controller!,
            builder: (context, child) {
              return Transform.rotate(
                angle: _controller!.value * 2 * math.pi,
                child: Container(
                  width: 50,
                  height: 50,
                  child: Image.asset("assets/convert.png"),
                ),
              );
            },
          ),
          const Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Text("To"),
            ),
          )
        ],
      ),
    );
  }

  Widget buttonWidget() {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<CurrencyConverterBloc>(context).add(
            GetConvertCurrency(from: _fromCurrencyCode, to: _toCurrencyCode));
        _controller!.repeat(reverse: true);
      },
      child: Container(
        width: 50,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Colors.purple,
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                spreadRadius: 1,
                color: Colors.black.withOpacity(.6),
                offset: Offset(0.0, 1.0),
              )
            ]),
        child: Text(
          "Tukar",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }

  Widget resultWidget() {
    return Container(
        child: BlocBuilder<CurrencyConverterBloc, CurrencyConverterState>(
      builder: (BuildContext context, CurrencyConverterState state) {
        if (state is CurrencyConverterLoaded) {
          _controller?.stop();
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "${_editingController!.text.isNotEmpty ? (state.currencyConverterData.result * double.parse(_editingController!.text)).toStringAsFixed(2) : state.currencyConverterData.result.toStringAsFixed(2)} $_toCurrencyCode",
                style: TextStyle(fontSize: 35),
              ),
            ],
          );
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "0.0 $_toCurrencyCode",
              style: TextStyle(fontSize: 35),
            ),
          ],
        );
      },
    ));
  }

  Widget fromResultWidget() {
    return Container(
      child: BlocBuilder<CurrencyConverterBloc, CurrencyConverterState>(
          builder: (BuildContext context, CurrencyConverterState state) {
        if (state is CurrencyConverterLoaded) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "1 $_fromCurrencyCode = ${state.currencyConverterData.result.toStringAsFixed(2)} $_toCurrencyCode",
                style: TextStyle(),
              ),
            ],
          );
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "1 $_fromCurrencyCode = 0.0 $_toCurrencyCode",
              style: TextStyle(),
            ),
          ],
        );
      }),
    );
  }

  Widget inputTextWidget() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: Colors.black, width: 1)),
      child: TextField(
        controller: _editingController,
        focusNode: _focusNode,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            hintText: "Masukkan nominal",
            border: InputBorder.none,
            hintStyle: TextStyle(fontSize: 25)),
      ),
    );
  }

  Widget daysRowItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _singleDay(text: "30 Days"),
        _singleDay(text: "60 Days"),
        _singleDay(text: "90 Days"),
      ],
    );
  }

  Widget _singleDay({String? text}) {
    return Row(
      children: <Widget>[
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
              border: Border.all(color: Colors.purple, width: 4)),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text ?? "",
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
