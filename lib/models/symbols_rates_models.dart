class SymbolsRatesModel {
  final dynamic motd;
  final dynamic success;
  final dynamic date;
  final Map<String, dynamic>? symbols;

  SymbolsRatesModel({
    this.motd,
    this.success,
    this.date,
    this.symbols,
  });

  factory SymbolsRatesModel.fromJson(Map<String, dynamic> json) =>
      SymbolsRatesModel(
        motd: json['motd'],
        date: json['date'],
        symbols: json['symbols'],
      );
}
