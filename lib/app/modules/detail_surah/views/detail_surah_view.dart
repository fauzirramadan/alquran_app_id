import 'package:alquran_app_id/app/data/constant.dart';
import 'package:alquran_app_id/app/data/models/surah.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_surah_controller.dart';

class DetailSurahView extends GetView<DetailSurahController> {
  const DetailSurahView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Surah surah = Get.arguments;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_rounded),
            color: grey,
            iconSize: 24,
          ),
          title: Text(
            '${surah.name?.transliteration?.id}',
            style: const TextStyle(
                color: purple1, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: purple2.withOpacity(0.2),
                    blurRadius: 25.0, // soften the shadow
                    spreadRadius: 10.0, //extend the shadow
                    offset: const Offset(
                      0.0, // Move to right 10  horizontally
                      10.0, // Move to bottom 10 Vertically
                    ),
                  )
                ]),
                child: Stack(
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset("assets/images/bgcard_detail.png"),
                      ),
                    ),
                    Positioned(
                      bottom: 3,
                      right: 10,
                      child: Image.asset("assets/images/quran_detail.png"),
                    ),
                    Center(
                        child: Container(
                      margin: const EdgeInsets.only(top: 28),
                      child: Column(
                        children: [
                          Text(
                            "${surah.name?.transliteration?.id}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${surah.name?.translation?.id}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          const Divider(
                            height: 20,
                            thickness: 1,
                            indent: 60,
                            endIndent: 60,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${surah.revelation?.id} | ${surah.numberOfVerses} ayat",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Image.asset("assets/images/bismillah.png")
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: purple3.withOpacity(0.1),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: purple3,
                                  child: Text(index.toString()),
                                ),
                                const Spacer(),
                                GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/images/play.png",
                                    )),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                        "assets/images/bookmark.png")),
                                const SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          alignment: Alignment.centerRight,
                          child: Text("tulisan arab"),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 16, left: 8),
                            child: Text(
                                textAlign: TextAlign.start,
                                "Artinya sdfwef jabfis bdfibdif bsdhbvshd bvhsdbvhbsdfhvb"))
                      ],
                    ),
                  );
                },
              ))
            ],
          ),
        ));
  }
}
