import 'package:flutter/material.dart';

class HomePageParts extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              "Information about few Items",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
          ),
          const SizedBox(height: 15),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            shrinkWrap: true,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F5F8),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "itemPage1");
                      },
                      child: Image.asset("images/1.jpg",
                      fit: BoxFit.contain,
                      height: 130,
                      width: 120,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Bread",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )
                          ),
                          const SizedBox(height: 12),
                          Row(children: const [
                            Text("\RM 5",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFB608),
                            ),
                            ),
                            SizedBox(height: 5),
                            Text(" / 1 Packet",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ), 
                          ],
                          ),
                        ],
                      )
                    ),
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF7F5F8),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "itemPage2");
                      },
                      child: Image.asset("images/2.jpg",
                      fit: BoxFit.contain,
                      height: 130,
                      width: 120,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Corn Flakes",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )
                          ),
                          const SizedBox(height: 12),
                          Row(children: const [
                            Text("\RM 5",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFB608),
                            ),
                            ),
                            SizedBox(height: 5),
                            Text(" / 1 Box",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                          ),
                        ],
                      )
                    ),
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF7F5F8),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "itemPage3");
                      },
                      child: Image.asset("images/3.jpg",
                      fit: BoxFit.contain,
                      height: 130,
                      width: 120,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Juice",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )
                          ),
                          SizedBox(height: 12),
                          Row(children: [
                            Text("\RM 5",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFB608),
                            ),
                            ),
                            SizedBox(height: 5),
                            Text(" / 1 Bottle",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                           
                            
                          ],
                          ),
                        ],
                      )
                    ),

                  ],
                )
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF7F5F8),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "itemPage4");
                      },
                      child: Image.asset("images/4.jpg",
                      fit: BoxFit.contain,
                      height: 130,
                      width: 120,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Apple",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )
                          ),
                          SizedBox(height: 12),
                          Row(children: [
                            Text("\RM 5",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFB608),
                            ),
                            ),
                            SizedBox(height: 5),
                            Text(" / 1 kg",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            
                            
                          ],
                          ),
                        ],
                      )
                    ),

                  ],
                )
              )

            ],
          ),

        ],
      ),

    );
  }

}