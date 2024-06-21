// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class liburan extends StatelessWidget {
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
                            '5 Tips Berolahraga 30 Menit di saat Liburan, Buat Tubuh Tetap Sehat dan Langsing!',
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
                            'Artikel diambil dari https://www.fimela.com/health/read/5565737/5-tips-berolahraga-30-menit-di-saat-liburan-buat-tubuh-tetap-sehat-dan-langsing?page=5',
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
                        'images/tips/liburan.png',
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
                                    "30 menit adalah waktu optimal untuk melatih kelompok otot tertentu guna mengurangi tingkat stres dan merasa energik setiap hari. Berolahraga selama 30 menit dapat membuat kita bergerak agar merasa sehat dan aktif. American Journal of Physiology menyebutkan bahwa rutin olahraga 30 menit sehari sama efektifnya dengan olahraga selama 60 menit alias 1 jam dalam hal menurunkan berat badan.",
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
                                    "Meski olahraga begitu menyehatkan dan sudah menjadi tren di masyarakat, tidak bisa dipungkiri bahwa cukup sulit untuk menjaga konsisten dalam berolahraga, apa lagi di tengah waktu libur lebaran. Agar tubuh tetap sehat di masa libur,  perlu berolahraga dengan rutin setiap hari selama 30 menit. Dengan rutin berolahraga, kamu akan merasakan perubahan positif pada tubuh,\n"
                                    "di bawah ini adalah tips rekomendasi olahraga selama 30 menit di saat liburan untuk membuat tubuh sehat, bugar, dan selalu langsing.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("1. Latihan berat badan",
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
                                    "Salah satu cara paling mudah dan efektif adalah melalui latihan berat badan. Ini adalah latihan yang menggunakan berat badan sebagai perlawanan seperti push up, squat, pull up, dan plank.  bisa melakukan latihan ini di mana saja, seperti di kamar hotel. Latihan ini tidak hanya bagus untuk membangun kekuatan dan daya tahan, tetapi juga mudah dimodifikasi berdasarkan tingkat kebugaran dan ruang yang tersedia.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("2. Yoga",
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
                                    "Yoga adalah cara terbaik untuk meregangkan, memperkuat, dan merilekskan tubuh , menjadikannya aktivitas yang sempurna untuk liburan. Baik kamu seorang pemula atau yoga berpengalaman, ada banyak rutinitas dan kelas yoga yang tersedia secara online atau tatap muka.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("3. Berenang",
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
                                    "Berenang adalah olahraga seluruh tubuh yang ringan untuk persendian, menjadikannya pilihan olahraga yang sangat baik bagi mereka yang sedang berlibur. Baik  berenang di laut atau di kolam renang, berenang memberikan latihan kardiovaskular yang baik sekaligus melatih otot. Kamu dapat melakukan gerakan renang yang berbeda untuk menargetkan kelompok otot yang berbeda dan membuat renang lebih menantang.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("4. Olahraga di luar ruangan",
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
                                    "Banyak destinasi liburan yang menawarkan kesempatan untuk bermain olahraga luar ruangan seperti bola voli, bola basket, atau sepak bola. Olahraga ini memberikan cara yang menyenangkan secara sosial untuk berolahraga saat berlibur. Olahraga di luar ruangan tidak hanya menawarkan latihan kardiovaskular yang baik, tetapi juga meningkatkan koordinasi tangan, mata, dan keterampilan kerja tim.",
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
                                    "5. High-Intensity Interval Training (HIIT)",
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
                                    "HIIT atau High Intensity Interval Training adalah olahraga yang menggabungkan jenis latihan intensitas tinggi dengan waktu pemulihan. Latihan HIIT menjadi cara terbaik untuk berolahraga dengan cepat dan efisien saat liburan. HIIT melibatkan latihan singkat dengan intensitas tinggi diikuti dengan waktu istirahat singkat. Latihan ini dapat dilakukan hanya dalam 15-20 menit dan dapat dimodifikasi berdasarkan tingkat kebugaran. HIIT sangat bagus untuk membakar kalori dan meningkatkan metabolisme tubuh, menjadikannya latihan yang sempurna untuk liburan saat kamu kekurangan waktu.",
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
