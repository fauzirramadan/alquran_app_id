// To parse this JSON data, do
//
//     final surah = surahFromJson(jsonString);

import 'dart:convert';

List<Surah> surahFromJson(String str) =>
    List<Surah>.from(json.decode(str).map((x) => Surah.fromJson(x)));

String surahToJson(List<Surah> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Surah {
  Surah({
    this.arti,
    this.asma,
    this.ayat,
    this.nama,
    this.type,
    this.urut,
    this.audio,
    this.nomor,
    this.rukuk,
    this.keterangan,
  });

  String? arti;
  String? asma;
  int? ayat;
  String? nama;
  Type? type;
  String? urut;
  String? audio;
  String? nomor;
  String? rukuk;
  String? keterangan;

  factory Surah.fromJson(Map<String, dynamic> json) => Surah(
        arti: json["arti"] == null ? null : json["arti"],
        asma: json["asma"] == null ? null : json["asma"],
        ayat: json["ayat"] == null ? null : json["ayat"],
        nama: json["nama"] == null ? null : json["nama"],
        type: json["type"] == null ? null : typeValues.map[json["type"]],
        urut: json["urut"] == null ? null : json["urut"],
        audio: json["audio"] == null ? null : json["audio"],
        nomor: json["nomor"] == null ? null : json["nomor"],
        rukuk: json["rukuk"] == null ? null : json["rukuk"],
        keterangan: json["keterangan"] == null ? null : json["keterangan"],
      );

  Map<String, dynamic> toJson() => {
        "arti": arti == null ? null : arti,
        "asma": asma == null ? null : asma,
        "ayat": ayat == null ? null : ayat,
        "nama": nama == null ? null : nama,
        "type": type == null ? null : typeValues.reverse[type],
        "urut": urut == null ? null : urut,
        "audio": audio == null ? null : audio,
        "nomor": nomor == null ? null : nomor,
        "rukuk": rukuk == null ? null : rukuk,
        "keterangan": keterangan == null ? null : keterangan,
      };
}

enum Type { MEKAH, MADINAH }

final typeValues = EnumValues({"madinah": Type.MADINAH, "mekah": Type.MEKAH});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
