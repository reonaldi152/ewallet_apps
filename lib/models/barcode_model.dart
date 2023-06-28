class BarcodeModel {
  final dynamic username;
  final dynamic link;

  BarcodeModel({
    this.username,
    this.link,
  });

  factory BarcodeModel.fromJson(Map<String, dynamic> json) => BarcodeModel(
        username: json['username'],
        link: json['link'],
      );
}
