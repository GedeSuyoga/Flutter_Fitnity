// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/placeslist.dart';

class places extends StatelessWidget {
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
                  Icons.search,
                  color: Colors.white,
                ),
                iconSize: 24,
                onPressed: () {
                  // Handle menu button press
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
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                child: Text(
                  "Find A Place To Rent For Your Sport Activity!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              Expanded(
                child: buildPlaceList(placelist),
              ),
            ],
          ),
        ));
  }
}
