// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class menambah extends StatelessWidget {
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
                            'Lebih Berisi, Ini 5 Olahraga untuk Menambah Berat Badan',
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
                            'Artikel diambil dari https://www.halodoc.com/artikel/lebih-berisi-ini-5-olahraga-untuk-menambah-berat-badan',
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
                        'images/tips/menambah.png',
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
                                    "Ternyata ada beberapa jenis olahraga untuk menambah berat badan supaya hasilnya lebih maksimal dan menyehatkan tubuh. Contoh latihan yang direkomendasikan adalah push-up, pull-up dan lunges.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 6,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                    "Jenis Olahraga untuk Menambah Berat Badan",
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
                                    "Sebagian besar olahraga untuk menambah berat badan adalah latihan beban. Sebab, olahraga ini bisa menambah massa otot yang otomatis menambah berat badan kamu. ",
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
                                    "Berikut jenis olahraga yang bisa kamu coba untuk menambah berat badan:",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("1. Push-Up",
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
                                    "Latihan ini membantu membangun otot di lengan dan bahu. Berikut cara tepat melakukan push-up:",
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
                                    "Berbaring telungkup. Letakkan tangan pada alas. Pastikan telapak tangan rata dengan tangan terentang di samping selebar bahu. Perlahan dorong tubuh ke atas sampai lengan terentang sepenuhnya. Jaga punggung dan kaki  lurus sehingga tubuh membentuk garis lurus. Perlahan-lahan turunkan tubuh kembali hingga hidung hampir menyentuh lantai. Ulangi semampu kamu.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("2. Pull-Up",
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
                                    "Latihan ini adalah cara sederhana untuk membangun otot lengan dan bahu. Berikut cara melakukanya:",
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
                                    "Pegang pull-up bar dengan kedua tangan. Pisahkan kedua lengan selebar bahu. Tarik tubuh sehingga kaki tidak menyentuh dasar lantai dan pastikan lengan tetap lurus. Tarik tubuh hingga dagu berada di atas palang pull-up bar. Turunkan tubuh secara perlahan agar lengan lurus kembali. Ulangi sebanyak yang kamu inginkan.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("3. Jongkok",
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
                                    "Latihan ini membantu membangun otot di pantat dan kaki, terutama otot paha depan. Berikut langkah-langkahnya:",
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
                                    "Berdiri tegak dan buat jarak kaki selebar pinggul. Letakkan tangan di pinggul dan kendurkan otot perut. Mulailah menurunkantubuh  hanya dengan menggunakan kaki, seolah-olah kamu akan duduk dan masuk ke posisi duduk sampai paha  sejajar dengan lantai. Angkat tubuh kembali ke posisi semula. Ulangi semampu kamu",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("4. Lunges",
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
                                    "Kamu dapat melakukan latihan ini di mana saja. Latihan ini bagus untuk membesarkan dan mengencangkan otot kaki dan pantat. Caranya, yaitu:",
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
                                    "Berdiri tegak, regangkan otot perut. Rentangkan satu kaki seperti sedang melangkah, lalu condongkan tubuh ke depan seperti sedang berlutut hingga lutut membentuk sudut 90 derajat. Dorong kembali tumit untuk mengangkat diri tubuh kembali ke posisi awal. Ulangi sebanyak yang kamu rasa nyaman dengan satu kaki. Ulangi untuk kaki lainnya.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("5. Bench press",
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
                                    "Kamu memerlukan flat bench untuk berbaring dan barbel bar. Namun, jangan pilih barbel yang terlalu berat. Bench press membantu membentuk otot bahu, trisep, dan dada. Ini adalah latihan yang bagus untuk menambah berat badan. Semakin banyak beban yang bisa kamu angkat, semakin banyak otot yang dapat kamu  bangun.\n"
                                    "Berikut langkah-langkahnya: ",
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
                                    "Berbaring telentang pada flat bench. Jika bench memiliki rak untuk menaruh barbel bar, hadapkan tubuh ke bagian tersebut. Jika tidak ada, pegang barbel dengan hati-hati dan perlahan berbaring ke belakang di bangku sampai kamu merasa nyaman. Pegang barbel bar dengan kedua tangan, termasuk ibu jari. Jangan ragu untuk merentangkan jari  sedikit. Turunkan lengan perlahan sampai barbel mendekat ke dada. Perlahan luruskan lengan. Ulangi 3mpat sampai lima kali sesuai kemampuan.",
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
