import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mini_project/auth_service.dart';
import 'package:mini_project/pages/tabWikiPageLogin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
        appBar: AppBar(title: Text("Log in page"),),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(25),
            child: ListView(
              children: [
                // ---------------------------------------------User--------------------------------------------- 
              Text('Email'),
              TextFormField(
                controller: email,
                validator: (value) {
                   if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    }
              ),

              // ---------------------------------------------Password---------------------------------------------
              Text('Password'),
              TextFormField(
                controller: password,
                obscureText: true,
              ),

              // ---------------------------------------------Button---------------------------------------------
              ElevatedButton(
                onPressed: () {
                    AuthService.signInFunc(email.text, password.text);
                    Navigator.push(
                    context,MaterialPageRoute(builder: (context) => const tabPageLogin()),);
                },
                child:Text('Summit')),
              ],
            ),
          )
          )
      );
  }
}