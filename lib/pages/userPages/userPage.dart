import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mini_project/pages/userPages/loginPage.dart';
import 'package:mini_project/pages/userPages/registerPage.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
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
            Text("you hasn't log in yet"),
            ElevatedButton(onPressed: () {
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
            }, child: Text("Sign in")),
            ElevatedButton(onPressed: () {
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyRegisterPage()));
            }, child: Text("Register"))
          ],
          )
        )
      ),
    );
  }
}