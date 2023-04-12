import 'package:flutter/material.dart';
import 'package:ewallet_apps/ui/widgets/row_buttons.dart';
import 'package:ewallet_apps/ui/pages/Info_page.dart';
import 'package:ewallet_apps/ui/pages/Rates_page.dart';
import 'package:ewallet_apps/ui/pages/converter_page.dart';

class MoneyChanger extends StatefulWidget {
  @override
  _MoneyChangerState createState() => _MoneyChangerState();
}

class _MoneyChangerState extends State<MoneyChanger> {
  int _pageIndexHolder = 0;

  List<Widget> _listPages = [ConverterPage(), RatesPage(), InfoPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            RowButtons(
              onSave: (pageIndexValue) {
                if (mounted)
                  setState(() {
                    _pageIndexHolder = pageIndexValue;
                  });
              },
              activePageIndex: _pageIndexHolder,
            ),
            Expanded(
              child: _listPages[_pageIndexHolder],
            )
          ],
        ),
      ),
    );
  }
}
