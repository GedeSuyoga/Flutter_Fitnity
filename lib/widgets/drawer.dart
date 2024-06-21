import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final BuildContext context;

  CustomDrawer(this.context);

  void _navigateToHomepage() {
    Navigator.of(context).pushNamed('/homepage');
  }

  void _navigateToEvent() {
    Navigator.of(context).pushNamed('/event');
  }

  void _navigateToTips() {
    Navigator.of(context).pushNamed('/tips');
  }

  void _navigateToPlaces() {
    Navigator.of(context).pushNamed('/places');
  }

  void _navigateToProfile() {
    Navigator.of(context).pushNamed('/profile');
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF1B263B),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 12,
              ),
              ClipRRect(
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Image(
                    image: AssetImage("images/logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "FITNITY",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.white,
                  fontFamily: 'Inter',
                ),
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Welcome Sporty People!",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.white,
                    fontFamily: 'Inter',
                  ),
                )
              ]),
          SizedBox(
            height: 12,
          ),
          ListTile(
            onTap: () {
              _navigateToHomepage();
            },
            leading: Icon(
              Icons.home,
              color: Colors.white,
              size: 20,
            ),
            title: Text("Home Page",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.white)),
          ),
          ListTile(
            onTap: () {
              _navigateToEvent();
            },
            leading: Icon(
              Icons.event,
              color: Colors.white,
              size: 20,
            ),
            title: Text("Event",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.white)),
          ),
          ListTile(
            onTap: () {
              _navigateToTips();
            },
            leading: Icon(
              Icons.sports,
              color: Colors.white,
              size: 20,
            ),
            title: Text("Sport Tips",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.white)),
          ),
          ListTile(
            onTap: () {
              _navigateToPlaces();
            },
            leading: Icon(
              Icons.pin_drop,
              color: Colors.white,
              size: 20,
            ),
            title: Text("Places",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.white)),
          ),
          ListTile(
            onTap: () {
              _navigateToProfile();
            },
            leading: Icon(
              Icons.person,
              color: Colors.white,
              size: 20,
            ),
            title: Text("Profile",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.white)),
          ),
        ]),
      ),
    );
  }
}
