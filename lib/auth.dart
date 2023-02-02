import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

userLogin(
  BuildContext context, {
  required email,
  required password,
}) async {
  await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: password)
      .then((value) => Navigator.of(context).pushReplacementNamed('/'));
}


userRegister(
  BuildContext context, {
  required email,
  required password,
}) async {
  await FirebaseAuth.instance
      .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
      .then((value) => Navigator.of(context).pushReplacementNamed('/login'));
}