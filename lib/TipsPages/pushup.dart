// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class pushup extends StatelessWidget {
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
            body: Container(
              margin: EdgeInsets.all(12),
              child: SingleChildScrollView(
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
                            '5 Cara Agar Kuat Push Up yang Wajib Diketahui',
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
                            'Artikel diambil dari https://www.alodokter.com/5-cara-agar-kuat-push-up-yang-wajib-diketahui',
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
                        'images/tips/pushup.png',
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
                                Text(
                                    "Cara agar kuat push up penting diketahui untuk mencegah cedera dan meningkatkan durasi serta frekuensi push up. Dengan begitu, manfaat dari jenis latihan yang satu ini bisa didapatkan secara optimal.",
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
                                    "Push up merupakan salah satu jenis latihan yang sering dilakukan untuk melatih otot tubuh bagian atas, termasuk otot lengan, tangan, dada, bahu, dan punggung atas. Tidak sebatas otot tubuh bagian atas saja, otot tubuh bagian bawah, seperti otot perut, panggul, paha dan kaki, secara tidak langsung juga ikut terlatih saat melakukan push up.",
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
                                    "Dengan melakukan push up secara rutin, ada beragam manfaat yang bisa diperoleh, mulai dari meningkatkan pembakaran kalori, meningkatkan keseimbangan dan fleksibilitas, memperkuat bahu dan punggung bawah, mengecilkan perut, paha, dan lengan, hingga memperbaiki postur tubuh.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("Cara Agar Kuat Melakukan Push Up",
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
                                    "Nah, untuk mendapatkan berbagai manfaat di atas, Anda harus kuat dalam melakukan push up. Pasalnya, gerakan push up yang tidak dilakukan dengan kuat dan tepat, selain membuat manfaatnya menjadi tidak maksimal, juga berisiko menimbulkan cedera. Berikut ini adalah beberapa cara dan tips yang bisa Anda lakukan agar kuat push up:",
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
                                    "1. Memulai dari teknik push up paling sederhana",
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
                                    "Push up dilakukan dengan posisi tubuh tengkurap. Dengan posisi ini, tubuh akan ditopang oleh kedua tangan dan ujung kaki yang menjadi tumpuan saat bergerak naik turun.",
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
                                    "Namun, apabila Anda baru mulai melakukan push up, posisi tersebut mungkin akan terasa terlalu berat karena otot belum bisa menopang tubuh terlalu lama.",
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
                                    "Untuk mengatasinya, Anda bisa mengubah sedikit teknik push up, dari yang sebelumnya bertumpu pada ujung kaki, menjadi bertumpu pada lutut atau yang dikenal dengan teknik kneeling push up.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 16,
                                ),
                                Text("2. Melakukan teknik push up dengan benar",
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
                                    "Jika Anda sudah bisa melakukan push up dengan teknik yang normal, cara agar kuat push up berikutnya adalah memastikan bahwa Anda melakukan push up dengan benar.",
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
                                    "Hal ini karena push up adalah jenis latihan yang melibatkan banyak otot dan sendi secara bersamaan. Ketika dilakukan dengan benar, push up akan meningkatkan kekuatan serta daya tahan otot dan sendi. Otot dan sendi yang kuat tentunya akan membuat Anda bisa melakukan push up lebih banyak dan lama.",
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
                                    "3. Melakukan latihan push up secara rutin",
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
                                    "Makin sering push up dilakukan, makin kuat otot Anda sehingga Anda bisa melakukan push up dengan durasi lebih lama. Satu siklus push up bisa dilakukan sebanyak 3 set. Masing-masing set terdiri dari 10 kali pengulangan gerakan push up dan 30 detik waktu istirahat.",
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
                                    "4. Memberikan beban tambahan ketika push up",
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
                                    "Jika sudah paham dengan cara push up yang benar, Anda juga bisa melakukan variasi dengan memberikan beban tambahan pada tubuh saat melakukan latihan tersebut. Beban tambahan ini berfungsi untuk melatih daya tahan otot agar makin kuat.",
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
                                    "5. Mengakhiri push up dengan gerakan plank",
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
                                    "Untuk mengakhiri push up sekaligus mengoptimalkan otot bagian bawah, Anda bisa melakukan plank. Plank adalah gerakan olahraga yang mirip dengan push up. Bedanya, gerakan ini menggunakan lengan bagian bawah sebagai tumpuannya. Plank dinilai efektif untuk memperkuat berbagai otot di seluruh tubuh, termasuk otot lengan, perut, dan kaki. Selain itu, plank juga dapat melatih keseimbangan tubuh.",
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
                                    "Jangan lupa untuk selalu mengakhiri sesi push up dengan pendinginan yang terdiri dari gerakan peregangan. Hal ini berguna untuk merelaksasi otot yang menegang selama push up sehingga risiko terjadinya kram bisa berkurang.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white.withOpacity(0.8),
                                      fontFamily: 'Inter',
                                    )),
                                SizedBox(
                                  height: 6,
                                )
                              ],
                            ))),
                  ],
                ),
              ),
            )));
  }
}
