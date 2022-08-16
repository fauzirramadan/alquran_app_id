import 'package:alquran_app_id/app/data/constant.dart';
import 'package:alquran_app_id/app/data/models/surah.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Assalamualaikum",
                      style: TextStyle(
                          color: grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                  Text(
                    "Fauzi Ramadhan",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: purple2),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Center(
                  child: Image.asset("assets/images/bgcard_home.png"),
                ),
                Positioned(
                  left: 30,
                  top: 20,
                  height: 93,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.library_books_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Last Read",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          "Al-Fatihah",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                        const Text(
                          "Ayat ke-1",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    right: 20,
                    bottom: 0,
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: Image.asset("assets/images/quran_home.png"),
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: FutureBuilder<List<Surah>>(
                    future: controller.getAllSurah(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                            child: CircularProgressIndicator(
                          color: purple3,
                        ));
                      } else if (!snapshot.hasData) {
                        return const Center(
                          child: Text("Connection error"),
                        );
                      }
                      print(snapshot.data);

                      return ListView.separated(
                          separatorBuilder: (context, index) {
                            return Divider();
                          },
                          physics: const BouncingScrollPhysics(),
                          itemCount: snapshot.data?.length ?? 0,
                          itemBuilder: (BuildContext context, index) {
                            Surah surah = snapshot.data![index];
                            return Container(
                              child: ListTile(
                                leading: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: const AssetImage(
                                        "assets/images/circle_custom.png"),
                                    child: Text(
                                      "${surah.nomor}",
                                      style: const TextStyle(color: purple2),
                                    )),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${surah.nama}",
                                      style: const TextStyle(
                                          color: purple2,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "${surah.type.toString().split('Type.').last} | ${surah.ayat} ayat",
                                      style: const TextStyle(
                                        color: grey,
                                      ),
                                    )
                                  ],
                                ),
                                trailing: Text(
                                  "${surah.asma}",
                                  style: const TextStyle(
                                      color: purple3,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            );
                          });
                    }))
          ],
        ),
      ),
    );
  }
}
