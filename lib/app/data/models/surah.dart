// To parse this JSON data, do
//
//     final surah = surahFromJson(jsonString);

import 'dart:convert';

Surah surahFromJson(String str) => Surah.fromJson(json.decode(str));

String surahToJson(Surah data) => json.encode(data.toJson());

class Surah {
  Surah({
    this.number,
    this.sequence,
    this.numberOfVerses,
    this.name,
    this.revelation,
    this.tafsir,
  });

  int? number;
  int? sequence;
  int? numberOfVerses;
  Name? name;
  Revelation? revelation;
  Tafsir? tafsir;

  factory Surah.fromJson(Map<String, dynamic> json) => Surah(
        number: json["number"] == null ? null : json["number"],
        sequence: json["sequence"] == null ? null : json["sequence"],
        numberOfVerses:
            json["numberOfVerses"] == null ? null : json["numberOfVerses"],
        name: json["name"] == null ? null : Name.fromJson(json["name"]),
        revelation: json["revelation"] == null
            ? null
            : Revelation.fromJson(json["revelation"]),
        tafsir: json["tafsir"] == null ? null : Tafsir.fromJson(json["tafsir"]),
      );

  Map<String, dynamic> toJson() => {
        "number": number == null ? null : number,
        "sequence": sequence == null ? null : sequence,
        "numberOfVerses": numberOfVerses == null ? null : numberOfVerses,
        "name": name == null ? null : name!.toJson(),
        "revelation": revelation == null ? null : revelation!.toJson(),
        "tafsir": tafsir == null ? null : tafsir!.toJson(),
      };
}

class Name {
  Name({
    this.short,
    this.long,
    this.transliteration,
    this.translation,
  });

  String? short;
  String? long;
  Translation? transliteration;
  Translation? translation;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        short: json["short"] == null ? null : json["short"],
        long: json["long"] == null ? null : json["long"],
        transliteration: json["transliteration"] == null
            ? null
            : Translation.fromJson(json["transliteration"]),
        translation: json["translation"] == null
            ? null
            : Translation.fromJson(json["translation"]),
      );

  Map<String, dynamic> toJson() => {
        "short": short == null ? null : short,
        "long": long == null ? null : long,
        "transliteration":
            transliteration == null ? null : transliteration!.toJson(),
        "translation": translation == null ? null : translation!.toJson(),
      };
}

class Translation {
  Translation({
    this.en,
    this.id,
  });

  String? en;
  String? id;

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        en: json["en"] == null ? null : json["en"],
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "en": en == null ? null : en,
        "id": id == null ? null : id,
      };
}

class Revelation {
  Revelation({
    this.arab,
    this.en,
    this.id,
  });

  String? arab;
  String? en;
  String? id;

  factory Revelation.fromJson(Map<String, dynamic> json) => Revelation(
        arab: json["arab"] == null ? null : json["arab"],
        en: json["en"] == null ? null : json["en"],
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "arab": arab == null ? null : arab,
        "en": en == null ? null : en,
        "id": id == null ? null : id,
      };
}

class Tafsir {
  Tafsir({
    this.id,
  });

  String? id;

  factory Tafsir.fromJson(Map<String, dynamic> json) => Tafsir(
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
      };
}
