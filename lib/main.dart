import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery/cart_provider.dart';
import 'package:grocery/pages/HomePage.dart';
import 'package:grocery/pages/ItemPage2.dart';
import 'package:grocery/pages/ItemPage3.dart';
import 'package:grocery/pages/ItemPage4.dart';
import 'package:grocery/pages/cart_screen.dart';
import 'package:grocery/pages/login.dart';
import 'package:grocery/pages/orderPage.dart';
import 'package:grocery/pages/register.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/ItemPage1.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized;
  await Firebase.initializeApp(
      // Replace with actual values
      options: FirebaseOptions(
          apiKey: "AIzaSyDcJS5zxG_T398GeXZ9U_m1Exwy7S2IpXY",
          appId: "1:364305620263:android:fc721bb2a7eee5cd765d02",
          messagingSenderId: "364305620263 ",
          projectId: "project-a99cd",
      ));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {

  @override
  void initState(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    
   
    return ChangeNotifierProvider(
        create: (_) => CartProvider(),
        child: Builder(builder: (BuildContext context){
          return MaterialApp(
            title: 'Grocery Store',
            theme: ThemeData(
              scaffoldBackgroundColor: const Color(0xFFF7F5F8),
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: '/login',
            routes: {
              "/" :(context) => HomePage(),
              "/login" :(context) => LoginPage(),
              "/register":(context) => RegisterPage(),
              "homepage":(context) => HomePage(),
              "itemPage1":(context) => ItemPage1(),
              "itemPage2":(context) => ItemPage2(),
              "itemPage3":(context) => ItemPage3(),
              "itemPage4":(context) => ItemPage4(),
              "orderPage":(context) => const OrderPage(),
              "cartpage":(context) => const CartScreen(),
              "ordered":(context) =>Ordered(),
            }
          );
        }
        ),
  );  
  }
  }
