// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class kebiasaan extends StatelessWidget {
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
                            '4 Tips Memulai Kebiasaan Olahraga agar Lebih Sehat di 2023',
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
                            'Artikel diambil dari https://www.halodoc.com/artikel/4-tips-memulai-kebiasaan-olahraga-agar-lebih-sehat-di-2023',
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
                        'images/tips/kebiasaan.png',
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
                                    "Terdapat beberapa tips yang dapat dicoba untuk memulai kebiasaan berolahraga di tahun 2023, antara lain: ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("1. Periksakan kondisi kesehatan",
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
                                    "Tips paling awal untuk membentuk kebiasaan berolahraga adalah dengan terlebih dahulu memeriksakan kondisi kesehatan fisik. Apalagi jika kamu ingin mencoba aktivitas fisik yang berat atau intens.",
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
                                    "Pemeriksaan dini dapat mendeteksi masalah atau kondisi kesehatan yang dapat membuat tubuh berisiko mengalami cedera saat berolahraga. Selain itu, pemeriksaan kesehatan juga dapat membantumu untuk mengetahui jenis olahraga yang tepat dan mengoptimalkan manfaatnya. ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("2. Mulai dengan olahraga yang diminati",
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
                                    "Tips selanjutnya yang dapat dilakukan adalah dengan memulai berolahraga dengan melakukan jenis olahraga yang kamu minati. Sebab, hal ini akan membuat olahraga terasa lebih menyenangkan sehingga kamu tidak mudah bosan. Alhasil, olahraga yang dilakukan pun dapat memberikan hasil yang optimal. ",
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
                                    "Sebagai contoh, jika kamu menyukai sepak bola tidak ada salahnya untuk melakukannya dua kali dalam seminggu. Namun, jika kamu masih bingung dengan jenis olahraga yang kamu sukai, kamu bisa mencoba beberapa olahraga yang sederhana. ",
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
                                    "Misalnya seperti berenang, berlari, bersepeda, atau sekadar jalan santai. Saat kamu sudah menemukan jawabannya, cobalah untuk mulai menjadikan olahraga tersebut sebagai rutinitas yang dilakukan dua atau tiga kali seminggu.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("3. Dimulai dengan 30 menit setiap hari",
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
                                    "Jika kamu sudah mengetahui olahraga apa yang aman dan kamu minati, cobalah untuk membatasi durasinya. Sebab, terlalu memaksakan diri dalam berolahraga tidaklah baik karena dapat membuatmu bosan dan kelelahan. Karena itu, jika kamu masih pemula, batasilah durasi olahragamu 30-45 menit sehari. Sebab, yang terpenting bukan berapa lama durasi saat berolahraga, tetapi terkait konsistensinya dalam membuatnya sebagai kebiasaan sehat.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("5. Konsumsi pola makan bergizi seimbang",
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
                                    "Selain rutin berolahraga, pastikan juga untuk mengombinasikan olahraga dengan mengonsumsi makanan sehat bergizi seimbang. Sebab, tubuh juga membutuhkan berbagai nutrisi penting guna mendukung fungsinya dengan baik. ",
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
                                    "Apalagi, makanan sehat dengan gizi seimbang dapat memberikan energi yang dibutuhkan tubuh untuk tetap aktif sepanjang hari. Selain itu, nutrisi yang diperoleh dari makanan sehat juga dibutuhkan untuk pertumbuhan dan perbaikan otot dan membantunya tetap kuat dan sehat. ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                              ],
                            ))),
                  ],
                ),
              )),
            )));
  }
}
