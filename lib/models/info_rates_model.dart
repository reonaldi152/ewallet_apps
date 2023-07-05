class InfoRatesModel {
  final dynamic motd;
  final dynamic success;
  final dynamic base;
  final dynamic date;
  final Map<String, dynamic>? rates;

  InfoRatesModel({
    this.motd,
    this.success,
    this.base,
    this.date,
    this.rates,
  });

  factory InfoRatesModel.fromJson(Map<String, dynamic> json) => InfoRatesModel(
        motd: json['motd'],
        success: json['success'],
        base: json['base'],
        date: json['date'],
        rates: json['rates'],
      );
}
