// To parse this JSON data, do
//
//     final detailSurah = detailSurahFromJson(jsonString);

import 'dart:convert';

DetailSurah detailSurahFromJson(String str) =>
    DetailSurah.fromJson(json.decode(str));

String detailSurahToJson(DetailSurah data) => json.encode(data.toJson());

class DetailSurah {
  DetailSurah({
    this.code,
    this.status,
    this.message,
    this.data,
  });

  int? code;
  String? status;
  String? message;
  Data? data;

  factory DetailSurah.fromJson(Map<String, dynamic> json) => DetailSurah(
        code: json["code"] == null ? null : json["code"],
        status: json["status"] == null ? null : json["status"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "status": status == null ? null : status,
        "message": message == null ? null : message,
        "data": data == null ? null : data!.toJson(),
      };
}

class Data {
  Data({
    this.number,
    this.sequence,
    this.numberOfVerses,
    this.name,
    this.revelation,
    this.tafsir,
    this.preBismillah,
    this.verses,
  });

  int? number;
  int? sequence;
  int? numberOfVerses;
  Name? name;
  Revelation? revelation;
  DataTafsir? tafsir;
  dynamic preBismillah;
  List<Verse>? verses;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        number: json["number"] == null ? null : json["number"],
        sequence: json["sequence"] == null ? null : json["sequence"],
        numberOfVerses:
            json["numberOfVerses"] == null ? null : json["numberOfVerses"],
        name: json["name"] == null ? null : Name.fromJson(json["name"]),
        revelation: json["revelation"] == null
            ? null
            : Revelation.fromJson(json["revelation"]),
        tafsir:
            json["tafsir"] == null ? null : DataTafsir.fromJson(json["tafsir"]),
        preBismillah: json["preBismillah"],
        verses: json["verses"] == null
            ? null
            : List<Verse>.from(json["verses"].map((x) => Verse.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "number": number == null ? null : number,
        "sequence": sequence == null ? null : sequence,
        "numberOfVerses": numberOfVerses == null ? null : numberOfVerses,
        "name": name == null ? null : name!.toJson(),
        "revelation": revelation == null ? null : revelation!.toJson(),
        "tafsir": tafsir == null ? null : tafsir!.toJson(),
        "preBismillah": preBismillah,
        "verses": verses == null
            ? null
            : List<dynamic>.from(verses!.map((x) => x.toJson())),
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

class DataTafsir {
  DataTafsir({
    this.id,
  });

  String? id;

  factory DataTafsir.fromJson(Map<String, dynamic> json) => DataTafsir(
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
      };
}

class Verse {
  Verse({
    this.number,
    this.meta,
    this.text,
    this.translation,
    this.audio,
    this.tafsir,
  });

  Number? number;
  Meta? meta;
  Text? text;
  Translation? translation;
  Audio? audio;
  VerseTafsir? tafsir;

  factory Verse.fromJson(Map<String, dynamic> json) => Verse(
        number: json["number"] == null ? null : Number.fromJson(json["number"]),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
        text: json["text"] == null ? null : Text.fromJson(json["text"]),
        translation: json["translation"] == null
            ? null
            : Translation.fromJson(json["translation"]),
        audio: json["audio"] == null ? null : Audio.fromJson(json["audio"]),
        tafsir: json["tafsir"] == null
            ? null
            : VerseTafsir.fromJson(json["tafsir"]),
      );

  Map<String, dynamic> toJson() => {
        "number": number == null ? null : number!.toJson(),
        "meta": meta == null ? null : meta!.toJson(),
        "text": text == null ? null : text!.toJson(),
        "translation": translation == null ? null : translation!.toJson(),
        "audio": audio == null ? null : audio!.toJson(),
        "tafsir": tafsir == null ? null : tafsir!.toJson(),
      };
}

class Audio {
  Audio({
    this.primary,
    this.secondary,
  });

  String? primary;
  List<String>? secondary;

  factory Audio.fromJson(Map<String, dynamic> json) => Audio(
        primary: json["primary"] == null ? null : json["primary"],
        secondary: json["secondary"] == null
            ? null
            : List<String>.from(json["secondary"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "primary": primary == null ? null : primary,
        "secondary": secondary == null
            ? null
            : List<dynamic>.from(secondary!.map((x) => x)),
      };
}

class Meta {
  Meta({
    this.juz,
    this.page,
    this.manzil,
    this.ruku,
    this.hizbQuarter,
    this.sajda,
  });

  int? juz;
  int? page;
  int? manzil;
  int? ruku;
  int? hizbQuarter;
  Sajda? sajda;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        juz: json["juz"] == null ? null : json["juz"],
        page: json["page"] == null ? null : json["page"],
        manzil: json["manzil"] == null ? null : json["manzil"],
        ruku: json["ruku"] == null ? null : json["ruku"],
        hizbQuarter: json["hizbQuarter"] == null ? null : json["hizbQuarter"],
        sajda: json["sajda"] == null ? null : Sajda.fromJson(json["sajda"]),
      );

  Map<String, dynamic> toJson() => {
        "juz": juz == null ? null : juz,
        "page": page == null ? null : page,
        "manzil": manzil == null ? null : manzil,
        "ruku": ruku == null ? null : ruku,
        "hizbQuarter": hizbQuarter == null ? null : hizbQuarter,
        "sajda": sajda == null ? null : sajda!.toJson(),
      };
}

class Sajda {
  Sajda({
    this.recommended,
    this.obligatory,
  });

  bool? recommended;
  bool? obligatory;

  factory Sajda.fromJson(Map<String, dynamic> json) => Sajda(
        recommended: json["recommended"] == null ? null : json["recommended"],
        obligatory: json["obligatory"] == null ? null : json["obligatory"],
      );

  Map<String, dynamic> toJson() => {
        "recommended": recommended == null ? null : recommended,
        "obligatory": obligatory == null ? null : obligatory,
      };
}

class Number {
  Number({
    this.inQuran,
    this.inSurah,
  });

  int? inQuran;
  int? inSurah;

  factory Number.fromJson(Map<String, dynamic> json) => Number(
        inQuran: json["inQuran"] == null ? null : json["inQuran"],
        inSurah: json["inSurah"] == null ? null : json["inSurah"],
      );

  Map<String, dynamic> toJson() => {
        "inQuran": inQuran == null ? null : inQuran,
        "inSurah": inSurah == null ? null : inSurah,
      };
}

class VerseTafsir {
  VerseTafsir({
    this.id,
  });

  Id? id;

  factory VerseTafsir.fromJson(Map<String, dynamic> json) => VerseTafsir(
        id: json["id"] == null ? null : Id.fromJson(json["id"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id!.toJson(),
      };
}

class Id {
  Id({
    this.short,
    this.long,
  });

  String? short;
  String? long;

  factory Id.fromJson(Map<String, dynamic> json) => Id(
        short: json["short"] == null ? null : json["short"],
        long: json["long"] == null ? null : json["long"],
      );

  Map<String, dynamic> toJson() => {
        "short": short == null ? null : short,
        "long": long == null ? null : long,
      };
}

class Text {
  Text({
    this.arab,
    this.transliteration,
  });

  String? arab;
  Transliteration? transliteration;

  factory Text.fromJson(Map<String, dynamic> json) => Text(
        arab: json["arab"] == null ? null : json["arab"],
        transliteration: json["transliteration"] == null
            ? null
            : Transliteration.fromJson(json["transliteration"]),
      );

  Map<String, dynamic> toJson() => {
        "arab": arab == null ? null : arab,
        "transliteration":
            transliteration == null ? null : transliteration!.toJson(),
      };
}

class Transliteration {
  Transliteration({
    this.en,
  });

  String? en;

  factory Transliteration.fromJson(Map<String, dynamic> json) =>
      Transliteration(
        en: json["en"] == null ? null : json["en"],
      );

  Map<String, dynamic> toJson() => {
        "en": en == null ? null : en,
      };
}
