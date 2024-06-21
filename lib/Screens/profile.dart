import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/ProfileTextBox.dart';

class profile extends StatefulWidget {
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final currentUser = FirebaseAuth.instance.currentUser!;
  final usersCollection = FirebaseFirestore.instance.collection("Users");

  void editField(String field, BuildContext context) async {
    String newValue = "";
    await showDialog(
        context: context,
        builder: (BuildContext dialogContext) => AlertDialog(
              backgroundColor: Color.fromARGB(255, 25, 25, 25),
              title: Text(
                "Edit $field",
                style: TextStyle(color: Colors.white),
              ),
              content: TextField(
                autofocus: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Enter new $field",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    )),
                onChanged: (value) {
                  newValue = value;
                },
              ),
              actions: [
                TextButton(
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () => Navigator.pop(dialogContext)),
                TextButton(
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () => Navigator.pop(dialogContext, newValue)),
              ],
            ));
    if (newValue.trim().length > 0) {
      await usersCollection.doc(currentUser.email).update({field: newValue});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1B263B),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            "PROFILE PAGE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF1B263B),
        ),
        drawer: CustomDrawer(context),
        body: StreamBuilder<DocumentSnapshot>(
          stream: FirebaseFirestore.instance
              .collection("Users")
              .doc(currentUser.email)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final userData = snapshot.data!.data() as Map<String, dynamic>;

              return ListView(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 72,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    currentUser.email!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Inter',
                    ),
                  ),
                  ProfileBox(
                      text: userData['username'],
                      sectionName: 'USERNAME',
                      onPressed: () => editField('username', context)),
                  ProfileBox(
                      text: userData['bio'],
                      sectionName: 'DESCRIPTION',
                      onPressed: () => editField('bio', context)),
                ],
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error${snapshot.error}'),
              );
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
