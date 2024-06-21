import 'package:flutter/material.dart';
import '../models/event_card_model.dart';
import 'package:url_launcher/url_launcher.dart';

List<EventCardModel> events = [
  EventCardModel(
    imageUrl: 'images/events/jt.png',
    date: '14 Juli 2024',
    title: 'J&T Connect Run',
    location: 'GBK Jakarta',
    moreInfoText: 'More Info',
    url: "https://lariku.info/jnt-connect-run-2024",
  ),
  EventCardModel(
      imageUrl: 'images/events/bhayangkara.png',
      date: '7 Juli 2024',
      title: 'Hari Jadi Bhayangkara Ke-78',
      location: 'Grand City Balikpapan',
      moreInfoText: 'More Info',
      url:
          "https://www.instagram.com/indorunnersbpn/p/C7nZNEUvMO8/?img_index=1"),
  EventCardModel(
      imageUrl: "images/events/smartfren.png",
      date: "Jakarta, 7 Juli 2024",
      title: "SMARTFREN RUN 2024",
      location: "Parkir Timur, GBK, Jakarta",
      moreInfoText: "More Info",
      url: "https://kalenderlari.com/events/smartfren-run-2024/"),
  EventCardModel(
      imageUrl: "images/events/green.png",
      date: "23 Juni 2024",
      title: "GREEN FORCE RUN 2024",
      location: "Tugu Pahlawan, Surabaya",
      moreInfoText: "More Info",
      url: "https://lariku.info/green-force-run-2024"),
  EventCardModel(
      imageUrl: "images/events/paolo.png",
      date: "30 Juni 2024",
      title: "PAOLO RUN FEST",
      location: "Jl. Gondorejo No.157, Batu",
      moreInfoText: "More Info",
      url: "https://lariku.info/paolo-run-fest-2024"),
  EventCardModel(
      imageUrl: "images/events/orto.png",
      date: "14 Juli 2024",
      title: "Surabaya Orthopedic Half Marathon 2024",
      location: "Pakuwon City, Surabaya",
      moreInfoText: "More Info",
      url: "https://lariku.info/surabaya-orthopedic-half-marathon-2024"),
];

Widget buildEventList(List<EventCardModel> event) {
  return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(height: 24);
      },
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      itemCount: event.length,
      itemBuilder: (context, index) {
        return IntrinsicHeight(
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 54, 75, 113),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.only(left: 2, top: 2, bottom: 2, right: 6),
            width: 286,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Add this line
                  child: Image.asset(
                    '${event[index].imageUrl}',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${event[index].date}',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.6),
                          )),
                      IntrinsicHeight(
                        child: Text('${event[index].title}',
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            )),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.place_sharp,
                            color: Colors.white,
                            size: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Text('${event[index].location}',
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.6),
                                )),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () async {
                          final url = event[index].url;
                          // ignore: deprecated_member_use
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: Container(
                            height: 25,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(
                                  0xff6C829A,
                                ),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('${event[index].moreInfoText}',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ))
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
