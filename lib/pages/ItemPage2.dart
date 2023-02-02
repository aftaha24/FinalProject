import 'package:flutter/material.dart';


class ItemPage2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 119, 211, 239),
            width: double.infinity,
            height: 380,
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 28,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                             color: Colors.grey.withOpacity(0.3),
                             spreadRadius: 1,
                             blurRadius: 5,
                            )
                          ]
                          
                        ),
                        child: Icon(Icons.favorite,
                        size: 30,
                        color: Colors.red,
                        ),

                      ),

                    ],
                  ),
                ),
                Image.asset(
                  "images/2.jpg",
                  height: 250,
                  width: 280,
                  fit: BoxFit.contain,
                  ),
                
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 4,
                )
              ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Corn Flakes",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "\RM 5",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,      
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "1 Packet ",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 5,
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Product Details",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text("Corn flakes are a packaged cereal product formed from small toasted flakes of corn, usually served cold with milk and sometimes sugar. Since their original production, the plain flakes have been flavored with salt, sugar, and malt, and many successive products with additional ingredients have been manufactured such as sugar frosted flakes and honey & nut corn flakes.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: EdgeInsets.only(left: 20),
              child: Text("Only available Now",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i=21; i<25; i++)
                    Container(
                      height: 90,
                      width: 90,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(top: 8, bottom: 8, left: 20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 230, 177),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 7,
                          )
                        ]
                      ),
                      child: Image.asset(
                        "images/$i.jpg",
                        fit: BoxFit.contain,
                        ),
                    )
                  ],
                ),
              )

            ],
          )
        ],
      ),
      
    );
  }
}