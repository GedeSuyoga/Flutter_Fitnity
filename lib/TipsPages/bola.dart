// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class bola extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xFF1B263B),
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.white),
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
                iconSize: 24,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              backgroundColor: Color(0xFF1B263B),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    child: Image(
                      width: 36,
                      height: 36,
                      fit: BoxFit.cover,
                      image: AssetImage("images/logo.png"),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Text(
                      "FITNITY",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ],
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Center(
                  child: Container(
                margin: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: IntrinsicHeight(
                        child: Text(
                            '3 Cara Jaga Performa Tubuh ala Pesepakbola yang Bisa Diikuti',
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: 'Inter',
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: IntrinsicHeight(
                        child: Text(
                            'Artikel diambil darihttps://sport.detik.com/sepakbola/sepakbola/d-6466710/3-cara-jaga-performa-tubuh-ala-pesepakbola-yang-bisa-diikuti',
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: 7,
                              fontWeight: FontWeight.w400,
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: 'Inter',
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10), // Add this line
                      child: Image.asset(
                        'images/tips/bola.png',
                        width: 500,
                        height: 250,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    IntrinsicHeight(
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "Momen pesta bola dunia pastinya begitu dinanti-nanti oleh para pencinta sepakbola. Pasalnya hajatan sepakbola 4 tahun sekali itu menyuguhkan banyak bintang ternama dari berbagai negara.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "Para atlet pun berlomba-lomba menunjukkan untuk kemampuan dan performa terbaik untuk membawa kemenangan bagi negara yang dibela. Dikutip dari Health Span, ada sejumlah cara yang dilakukan oleh para pemain bola agar performa mereka tetap terjaga saat bermain di lapangan.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("1. Berlatih dengan Cara Berbeda",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white.withOpacity(0.9),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "Southampton FC's Head of Sport Science Alek Gross mengatakan untuk memiliki kemampuan yang lebih unggul daripada pemain lain maka cara berlatih para atlet pun harus berbeda. Menurutnya, jika berlatih dengan cara yang sama maka kemampuan yang dimiliki pun akan sama. Pelatihan pun harus menekankan pada sistem fisiologis tubuh. Selain itu dalam pelatihan pun harus ada hal-hal menarik dan bervariasi sehingga bisa mendapatkan hasil yang diinginkan.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                    "2. Latihan dan Fase Pemulihan Harus Seimbang",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white.withOpacity(0.9),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "Agar performa terjaga, menyeimbangkan fase latihan dan pemulihan harus dilakukan. Bahkan jika tubuh dipaksa untuk berlatih terus tanpa memikirkan istirahat maka bisa menurunkan performa saat bermain di lapangan. Bahkan cara tersebut menyebabkan para atlet rentan untuk cedera.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                    "3. Konsumsi Makanan dan Minuman yang Benar",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white.withOpacity(0.9),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "Memberikan tubuh makanan dan minuman yang bergizi untuk menjaga performa merupakan hal yang harus diperhatikan. Sebab nutrisi yang terkandung dalam makanan memiliki peran yang penting dalam menjaga performa atau bahkan saat fase pemulihan. Tak hanya itu, konsumsi karbohidrat juga diperlukan untuk mendapatkan tenaga. Konsumsi karbohidrat harus diimbangi dengan konsumsi sayuran dan buah agar nutrisi yang didapatkan bisa maksimal.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                    "Selain makanan, minuman pun juga harus diperhatikan. Dari banyaknya pilihan minuman, air mineral merupakan salah satu yang cukup direkomendasikan.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "Dikutip dari Madensuyu, air mineral sendiri ternyata memiliki peran yang penting bagi menjaga stamina para atlet. Sebab air mineral mampu menggantikan cairan yang hilang dari aktivitas berolahraga. Sehingga tubuh menjadi lebih fresh dan tenaga saat bertanding pun terjaga.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                    "Tak hanya mampu menggantikan cairan yang hilang, kebiasaan mengonsumsi air mineral juga baik untuk kesehatan sejumlah organ tubuh seperti jantung, tulang, hingga menjaga tekanan darah seseorang. Oleh karena itu, air mineral merupakan salah satu minuman yang banyak dikonsumsi oleh para atlet.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 6,
                                ),
                              ],
                            ))),
                  ],
                ),
              )),
            )));
  }
}
