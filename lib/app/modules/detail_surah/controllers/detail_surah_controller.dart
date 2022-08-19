import 'dart:convert';

import 'package:alquran_app_id/app/data/api.dart';
import 'package:alquran_app_id/app/data/models/detail_surah.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DetailSurahController extends GetxController {
  // Get detail surah
  Future<List<DetailSurah>> getDetailSurah(String id) async {
    var res = await http
        .get(Uri.parse("https://api.npoint.io/99c279bb173a6e28359c/surat/$id"));
    List? data = (json.decode(res.body));

    if (data == null || data.isEmpty) {
      return [];
    } else {
      return data.map((e) => DetailSurah.fromJson(e)).toList();
    }
  }
}
