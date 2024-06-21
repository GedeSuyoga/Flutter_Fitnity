// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/eventlist.dart';

class event extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: "Upcoming",
    ),
    Tab(
      text: "Past",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: myTab.length,
          child: Scaffold(
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
                crossAxisAlignment: CrossAxisAlignment.center,
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
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(60),
                child: Column(
                  children: [
                    TabBar(
                      tabs: myTab,
                      labelColor: Color(0xff90e0ef),
                      unselectedLabelColor: Colors.white,
                      indicatorColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            drawer: CustomDrawer(context),
            body: TabBarView(
              children: [
                buildEventList(events),
                buildEventList(events),
              ],
            ),
          ),
        ));
  }
}
