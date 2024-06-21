import 'package:fitnityapp/widgets/drawer.dart';
import 'package:flutter/material.dart';
import '../widgets/tipslist.dart';

class tipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xFF1B263B),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
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
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                child: Text(
                  "Useful Tips and Trick For Your Healthy Life!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              Expanded(
                child: buildTipsList(tips),
              ),
            ],
          ),
        ));
  }
}
