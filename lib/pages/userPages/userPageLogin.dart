import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/auth_service.dart';
import 'package:mini_project/pages/tabWikiPage.dart';

class UserPageLogin extends StatefulWidget {
  const UserPageLogin({super.key});

  @override
  State<UserPageLogin> createState() => _UserPageState();
}

class _UserPageState extends State<UserPageLogin> {
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      body: SafeArea(
        child: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(25),
        child: Column(children: [
            Text("you already log in yet"),
            ElevatedButton(onPressed: () {
              AuthService.signOutFunc();
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => tabPage()));
            
            }, child: Text("Sign out")),
          ],
          )
        )
      ),
    );
  }
}