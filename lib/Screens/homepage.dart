// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/imagedata.dart';
import '../widgets/drawer.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xFF1B263B),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.login_outlined,
                  color: Colors.white,
                ),
                iconSize: 24,
                onPressed: () {
                  Navigator.of(context).pushNamed('/login');
                },
              )
            ],
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
          drawer: CustomDrawer(context),
          body: ListView(
            children: [
              Container(
                  width: 360,
                  height: 1,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 75, 75, 75))),
              IntrinsicHeight(
                  child: Container(
                      width: 200,
                      padding: EdgeInsets.only(
                          top: 24, bottom: 2, left: 24, right: 24),
                      child: Center(
                        child: Text("Welcome to the Fit Community!",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontFamily: 'Inter',
                            )),
                      ))),
              Container(
                padding:
                    EdgeInsets.only(left: 24, top: 24, right: 24, bottom: 36),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/event');
                          },
                          child: Container(
                            width: 90,
                            height: 90,
                            padding: EdgeInsets.only(top: 6),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 54, 75, 113),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Icon(
                                    Icons.event,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Events",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontFamily: 'Inter',
                                      ),
                                    ))
                              ]),
                            ),
                          ),
                        ),
                        SizedBox(width: 60),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/places');
                          },
                          child: Container(
                            width: 90,
                            height: 90,
                            padding: EdgeInsets.only(top: 6),
                            child: Column(children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/places');
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 54, 75, 113),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Icon(
                                    Icons.place_sharp,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Places",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                    ),
                                  ))
                            ]),
                          ),
                        ),
                        SizedBox(width: 60),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 90,
                            height: 90,
                            padding: EdgeInsets.only(top: 6),
                            child: Column(children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 54, 75, 113),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Icon(
                                  Icons.home,
                                  color: Colors.white,
                                  size: 28,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Home",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                    ),
                                  ))
                            ]),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 2),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/profile');
                          },
                          child: Container(
                            width: 90,
                            height: 90,
                            padding: EdgeInsets.only(top: 6),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 54, 75, 113),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Profile",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontFamily: 'Inter',
                                      ),
                                    ))
                              ]),
                            ),
                          ),
                        ),
                        SizedBox(width: 60),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/tips');
                          },
                          child: Container(
                            width: 90,
                            height: 90,
                            padding: EdgeInsets.only(top: 6),
                            child: Column(children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 54, 75, 113),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Icon(
                                  Icons.sports,
                                  color: Colors.white,
                                  size: 28,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Sports Tips",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                    ),
                                  ))
                            ]),
                          ),
                        ),
                        SizedBox(
                          width: 142,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  width: 200,
                  padding:
                      EdgeInsets.only(top: 2, bottom: 16, left: 24, right: 24),
                  child: Text("Upcoming Events",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: 'Inter',
                      ))),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                ),
                items: imageSliders,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 72, vertical: 16),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/event');
                  },
                  child: Container(
                      height: 25,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Color(
                            0xff6C829A,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("See More Here!",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ))
                        ],
                      )),
                ),
              ),
              IntrinsicHeight(
                  child: Container(
                      width: 200,
                      padding: EdgeInsets.only(
                          top: 36, bottom: 24, left: 24, right: 24),
                      child: Text("And Here Are The Rules In This Community ️",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontFamily: 'Inter',
                          )))),
              IntrinsicHeight(
                  child: Container(
                      width: 200,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Text(
                          "Fit Community connects socially conscious global citizens all around the world. Positive Impact first! This group for socially conscious people all over the world.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontFamily: 'Inter',
                          )))),
              IntrinsicHeight(
                  child: Container(
                      width: 200,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Text(
                          "⚠️  Positive Impact First ⚠️Priority will be given to announcements that focus on positive impact, such as volunteer opportunities, social causes, and scholarship events.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontFamily: 'Inter',
                          )))),
              IntrinsicHeight(
                  child: Container(
                      width: 200,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Text(
                          "💥 Approval Process💥To have your announcement featured, please send it to our moderators for approval.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontFamily: 'Inter',
                          )))),
              IntrinsicHeight(
                  child: Container(
                      width: 200,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Text(
                          "💬 Open Chat Guidlines 💬 👥 Respect EveryoneDiscrimination, harassment, and hateful speech will not be tolerated. ✍️ No SpamKeep the community free from any form of spam, including unauthorized advertising. 💫 Keep it RelevantPlease keep all discussions and announcements in line with the community's mission to provide positive impact and skill-sharing opportunities",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontFamily: 'Inter',
                          )))),
              IntrinsicHeight(
                  child: Container(
                      width: 200,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Text(
                          "🥂Paid Events 🥂 🚫💰Non-Profit FocusEvents that donate a percentage of profits to a charitable cause will be given priority. 💡Value-BasedPaid events must offer clear, high-value content that aligns with the community's focus on positive impact and skill-sharing. 📢TransparencyAll paid events must disclose the cost upfront in the announcement.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontFamily: 'Inter',
                          )))),
              IntrinsicHeight(
                  child: Container(
                      width: 200,
                      padding: EdgeInsets.only(
                          top: 12, bottom: 36, left: 24, right: 24),
                      child: Text(
                          "⚡Reporting ⚡If you encounter a violation of these guidelines, please report it to the moderators immediately for review.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontFamily: 'Inter',
                          )))),
              Container(
                  width: 360,
                  height: 1,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 75, 75, 75))),
              SizedBox(
                height: 12,
              )
            ],
          ),
        ));
  }
}
