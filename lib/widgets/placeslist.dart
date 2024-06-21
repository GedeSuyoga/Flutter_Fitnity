// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/places_card_model.dart';

List<PlacesCardModel> placelist = [
  PlacesCardModel(
      imageUrl: "images/places/image1.jpg",
      type: "Futsal",
      title: "Hokky Futsal",
      location: "Jl. Nginden II No. 109",
      moreInfoText: "More Info",
      url: "https://maps.app.goo.gl/WnLVPY6WETR65yWn8"),
  PlacesCardModel(
      imageUrl: "images/places/image8.jpg",
      type: "Futsal",
      title: "Baskhara Futsal Arena",
      location: "Jl. Manyar Jaya Praja I No. 47",
      moreInfoText: "More Info",
      url: "https://maps.app.goo.gl/Auoq3CyjbDWiM3ZV8"),
  PlacesCardModel(
      imageUrl: "images/places/image2.jpg",
      type: "Basket",
      title: "Mayasi Basketball Court",
      location: "Jl. Kenjeran No. 546, Kalijudan",
      moreInfoText: "More Info",
      url: "https://maps.app.goo.gl/GuzEiDeEdsCj6Lxy7"),
  PlacesCardModel(
      imageUrl: "images/places/image6.jpg",
      type: "Basket",
      title: "Royal RIverside Court",
      location: "Jl. Kupang Jaya Indah No. 48, Simomulyo",
      moreInfoText: "More Info",
      url: "https://maps.app.goo.gl/EFawpomURmAsRgXj7"),
  PlacesCardModel(
      imageUrl: "images/places/image3.jpg",
      type: "Badminton",
      title: "Lapangan Badminton STIESIA",
      location: "Jl. Menur Pumpungan No. 28, Menur Pumpungan",
      moreInfoText: "More Info",
      url: "https://maps.app.goo.gl/2G5uwVuQ5qwKDLTCA"),
];

Widget buildPlaceList(List<PlacesCardModel> place) {
  return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(height: 24);
      },
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 2),
      itemCount: place.length,
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
                    '${place[index].imageUrl}',
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
                      Text('${place[index].type}',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.6),
                          )),
                      IntrinsicHeight(
                        child: Text('${place[index].title}',
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
                            child: Text('${place[index].location}',
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
                          final url = place[index].url;
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
                                Text('${place[index].moreInfoText}',
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
