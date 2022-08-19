// To parse this JSON data, do
//
//     final detailSurah = detailSurahFromJson(jsonString);

import 'dart:convert';

List<DetailSurah> detailSurahFromJson(String str) => List<DetailSurah>.from(
    json.decode(str).map((x) => DetailSurah.fromJson(x)));

String detailSurahToJson(List<DetailSurah> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DetailSurah {
  DetailSurah({
    this.ar,
    this.id,
    this.tr,
    this.nomor,
  });

  String? ar;
  String? id;
  String? tr;
  String? nomor;

  factory DetailSurah.fromJson(Map<String, dynamic> json) => DetailSurah(
        ar: json["ar"] == null ? null : json["ar"],
        id: json["id"] == null ? null : json["id"],
        tr: json["tr"] == null ? null : json["tr"],
        nomor: json["nomor"] == null ? null : json["nomor"],
      );

  Map<String, dynamic> toJson() => {
        "ar": ar == null ? null : ar,
        "id": id == null ? null : id,
        "tr": tr == null ? null : tr,
        "nomor": nomor == null ? null : nomor,
      };
}
