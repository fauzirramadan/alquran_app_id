import 'dart:convert';

import 'package:alquran_app_id/app/data/api.dart';
import 'package:alquran_app_id/app/data/models/detail_surah.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DetailSurahController extends GetxController {
  // Get detail surah
  Future<DetailSurah> getDetaillSurah(String id) async {
    var res = await http.get(Uri.parse("$baseUrl/surah/$id"));
    Map<String, dynamic> data =
        (json.decode(res.body) as Map<String, dynamic>)["data"];

    return DetailSurah.fromJson(data);
  }
}
