// // Get Detail Surah

// import 'dart:convert';
// import 'package:alquran_app_id/app/data/models/detail_surah.dart';
// import 'package:http/http.dart' as http;
// import 'package:alquran_app_id/app/data/api.dart';

// void main() async {
//   var res = await http.get(Uri.parse("$baseUrl/1"));
//   Map<String, dynamic> data =
//       (json.decode(res.body) as Map<String, dynamic>)["data"];

//   var detail = DetailSurah.fromJson(data);

//   print(detail.data?.numberOfVerses);
// }
