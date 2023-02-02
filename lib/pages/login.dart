import 'package:grocery/constant.dart';
import 'package:grocery/pages/homepage.dart';
import 'package:grocery/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../auth.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to our \n   Grocery App",
              textScaleFactor: 2.5,
            ),
            const SizedBox(
                height: 30,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: email, 
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                    obscureText: false,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                    controller: password, 
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                    width: double.infinity,
                    height: 55,
                    child:  ElevatedButton(onPressed: () {  
                      userLogin(
                          context,
                          email: email.text,
                          password: password.text,
                        );
                    }, 
                    child: Text("Login"))
                  ),
                ],
              )
            ),
            const SizedBox(
            height: 10,
            ),
            Row(
              children: [
                const Text("Don't have an Account?"),
                TextButton(onPressed: (){
                  Navigator.of(context).pushNamed('/register');
                }, 
                child: const Text("Register"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}