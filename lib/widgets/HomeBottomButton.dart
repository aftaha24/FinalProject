import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/pages/cart_screen.dart';


class HomeBottomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(
        horizontal: 25, 
        vertical: 12
        ),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "homepage");
              },
            child: Column(
              children: [
              Icon(Icons.home,
                color: Color.fromARGB(255, 0, 0, 0),
                size: 32,
              ),
                Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "orderPage");
              },
              child: Column(
                children: [
              Icon(CupertinoIcons.cart,
                color: Color.fromARGB(255, 0, 0, 0),
                size: 32,
              ),
                Text(
                  "Order Here",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
              ),
              
            ),
            
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "ordered");
              },
              child: Column(
                children: [
              Icon(Icons.shopping_basket,
                color: Color.fromARGB(255, 0, 0, 0),
                size: 32,
              ),
                Text(
                  "All Orders",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
              ),
              
            ),
            InkWell(
               onTap: (){
                Navigator.pushNamed(context, "/login");
              },
              child: Column(
                children: [
              Icon(CupertinoIcons.profile_circled,
                color: Color.fromARGB(255, 0, 0, 0),
                size: 32,
              ),
                Text(
                  "Log Out",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
              ),
              
            ),
          ],
        ),
    );
  }
}
