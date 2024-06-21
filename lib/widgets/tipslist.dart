import 'package:fitnityapp/TipsPages/bola.dart';
import 'package:fitnityapp/TipsPages/kebiasaan.dart';
import 'package:fitnityapp/TipsPages/liburan.dart';
import 'package:fitnityapp/TipsPages/menambah.dart';
import 'package:fitnityapp/TipsPages/ototlengan.dart';
import 'package:fitnityapp/TipsPages/pushup.dart';
import 'package:flutter/material.dart';
import '../models/tips_models.dart';

List<TipsCardModel> tips = [
  TipsCardModel(
    imageUrl: 'images/tips/pushup.png',
    source: 'alodokter.com',
    title: '5 Cara Agar Kuat Push Up yang Wajib Diketahui',
    smalldesc:
        'Cara agar kuat push up penting diketahui untuk mencegah cedera dan meningkatkan durasi serta frekuensi push up. Dengan begitu, manfaat dari jenis latihan yang satu ini bisa didapatkan secara optimal.',
    pages: 'pushup',
  ),
  TipsCardModel(
    imageUrl: 'images/tips/menambah.png',
    source: 'www.halodoc.com',
    title: 'Lebih Berisi, Ini 5 Olahraga untuk Menambah Berat Badan',
    smalldesc:
        'Ternyata ada beberapa jenis olahraga untuk menambah berat badan supaya hasilnya lebih maksimal dan menyehatkan tubuh. Contoh latihan yang direkomendasikan adalah push-up, pull-up dan lunges',
    pages: '/menambah',
  ),
  TipsCardModel(
    imageUrl: 'images/tips/liburan.png',
    source: 'liputan6.com',
    title:
        '5 Tips Berolahraga 30 Menit di saat Liburan, Buat Tubuh Tetap Sehat dan Langsing!',
    smalldesc:
        '30 menit adalah waktu optimal untuk melatih kelompok otot tertentu guna mengurangi tingkat stres dan merasa energik setiap hari. Berolahraga selama 30 menit dapat membuat kita bergerak agar merasa sehat dan aktif. ',
    pages: 'liburan',
  ),
  TipsCardModel(
    imageUrl: 'images/tips/ototlengan.png',
    source: 'www.idntimes.com',
    title: '10 Cara Efektif Memperbesar Otot Lengan Tanpa Harus ke Gym',
    smalldesc:
        'Memiliki lengan yang berotot dan kuat merupakan impian banyak orang. Pasalnya, otot lengan yang kuat dan berbentuk akan membuat tubuh terlihat lebih gagah dan kuat.',
    pages: 'ototlengan',
  ),
  TipsCardModel(
    imageUrl: 'images/tips/bola.png',
    source: 'sport.detik.com',
    title: '3 Cara Jaga Performa Tubuh ala Pesepakbola yang Bisa Diikuti',
    smalldesc:
        'Para atlet berlomba-lomba menunjukkan untuk kemampuan dan performa terbaik untuk membawa kemenangan bagi negara yang dibela. Dikutip dari Health Span, ada sejumlah cara yang dilakukan oleh para pemain bola agar performa mereka tetap terjaga saat bermain di lapangan.',
    pages: 'bola',
  ),
  TipsCardModel(
    imageUrl: 'images/tips/kebiasaan.png',
    source: 'www.halodoc.com',
    title: '4 Tips Memulai Kebiasaan Olahraga agar Lebih Sehat di 2023',
    smalldesc:
        'Terdapat beberapa tips yang dapat dicoba untuk memulai kebiasaan berolahraga. Mulai dari memeriksakan kondisi kesehatan, memilih olahraga yang disukai, hingga mengonsumsi makanan bergizi seimbang',
    pages: 'kebiasaan',
  ),
];

Widget getPage(String page) {
  switch (page) {
    case 'pushup':
      return pushup();
    case 'menambah':
      return menambah();
    case 'liburan':
      return liburan();
    case 'ototlengan':
      return ototlengan();
    case 'bola':
      return bola();
    case 'kebiasaan':
      return kebiasaan();
    default:
      return Scaffold(body: Center(child: Text('Page not found')));
  }
}

Widget buildTipsList(List<TipsCardModel> tips) {
  return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(height: 24);
      },
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      itemCount: tips.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return getPage(tips[index].pages);
            }));
          },
          child: IntrinsicHeight(
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 54, 75, 113),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 2),
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Add this line
                    child: Image.asset(
                      '${tips[index].imageUrl}',
                      width: 500,
                      height: 250,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 4),
                        Text('${tips[index].source}',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.6),
                            )),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: IntrinsicHeight(
                            child: Text('${tips[index].title}',
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: 6, right: 6, bottom: 6),
                          child: Text('${tips[index].smalldesc}',
                              style: TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.6),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
