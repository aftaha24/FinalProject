import 'package:flutter/material.dart';
import 'package:grocery/widgets/HomePageParts.dart';


import '../widgets/HomeBottomButton.dart';

class Payment extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Grocery Shop'),
        centerTitle: true,
      ),
      
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            

             Container(
              alignment: Alignment.center,
                margin: EdgeInsets.all(20),
                child: Text("Scan the QR code below to make payment. Show the proof of your payment evidence to store clerk when collecting your item")
                ),
            Container(
                child: Image.asset(
                  "images/9.jpg",
                  
                  fit: BoxFit.contain,
                  ),
                ),

                Container(
                margin: const EdgeInsets.all(20),
                width: double.infinity,
                height: 55,
                child:  ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, "homepage");
              }, 
              child: Text("Return to Homepage"))),
               
            
            
          ],
        ),
      ),
      bottomNavigationBar: HomeBottomButton(),
    );
  }
}