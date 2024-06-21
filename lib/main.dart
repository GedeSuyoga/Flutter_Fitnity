import 'package:firebase_core/firebase_core.dart';
import 'package:fitnityapp/Authentication/Screen/signup.dart';
import 'package:fitnityapp/Screens/profile.dart';
import 'package:fitnityapp/Screens/tips.dart';
import 'package:fitnityapp/TipsPages/menambah.dart';
import 'package:fitnityapp/TipsPages/pushup.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Screens/homepage.dart';
import 'Screens/event.dart';
import 'Screens/gatherings.dart';
import 'Screens/places.dart';
import 'Authentication/Screen/mainlogin.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDYA1AklDUk2nUuSs88sHKVzF_ebumYP3g",
            appId: "1:908433508288:web:cd3d4a90170672a7122a25",
            messagingSenderId: "908433508288",
            projectId: "fitnityapp-766f6"));
  }
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
      initialRoute: '/login',
      routes: {
        '/homepage': (context) => homepage(),
        '/event': (context) => event(),
        '/gatherings': (context) => gatherings(),
        '/places': (context) => places(),
        '/login': (context) => LogInScreen(),
        '/signup': (context) => SignUpScreen(),
        '/profile': (context) => profile(),
        '/tips': (context) => tipsPage(),
        '/pushup': (context) => pushup(),
        '/menambah': (context) => menambah(),
      },
    );
  }
}
