import 'package:badges/badges.dart';
import 'package:grocery/pages/Cart.dart';
import 'package:grocery/cart_provider.dart';
//import 'package:cart/cart_screen.dart';
import 'package:grocery/db.dart';
import 'package:flutter/material.dart';
import 'package:grocery/cart_provider.dart';
import 'package:grocery/pages/Cart.dart';
import 'package:grocery/pages/cart_screen.dart';
import 'package:grocery/widgets/HomeBottomButton.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {


List<String> productName = ['Cornflakes' , 'Apple' , 'Grapes' , 'Banana' , 'Bread' , 'Peach','Mixed Fruit',] ;
  List<String> productUnit = ['Box' , 'Dozen' , 'KG' , 'Dozen' , 'Packet' , 'KG','KG',] ;
  List<int> productPrice = [10, 15 , 20 , 12 , 5, 25 , 40 ] ;
  List<String> productImage = [
    'https://m.media-amazon.com/images/I/81wHWuSiVsL.jpg' ,
    'https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834' ,
    'https://www.gannett-cdn.com/authoring/2017/01/18/NFTU/ghows-LK-6897c679-f0cc-41d1-8241-d3f5f8dbad35-7a9c6006.jpeg?crop=2047,1158,x0,y103&width=2047&height=1158&format=pjpg&auto=webp' ,
    'https://media.istockphoto.com/id/173242750/photo/banana-bunch.jpg?s=612x612&w=0&k=20&c=MAc8AXVz5KxwWeEmh75WwH6j_HouRczBFAhulLAtRUU=' ,
    'https://m.media-amazon.com/images/I/411YO-b+nKL.jpg' ,
    'https://static.libertyprim.com/files/familles/peche-large.jpg?1574630286' ,
    'https://thumbs.dreamstime.com/b/colorful-fruit-mix-fruits-close-up-image-isolated-white-background-31297821.jpg' ,
  ] ;

  Db? db = Db();

  @override
  Widget build(BuildContext context) {
    final cart  = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => CartScreen()));
            },
            child: Center(
              child: Badge(
                showBadge: true,
                badgeContent: Consumer<CartProvider>(
                  builder: (context, value , child){
                    return Text(value.getCounter().toString(),style: TextStyle(color: Colors.white));
                  },
                ),
                animationType: BadgeAnimationType.fade,
                animationDuration: Duration(milliseconds: 300),
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ),
          ),

          SizedBox(width: 20.0)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: productName.length,
                itemBuilder: (context, index){
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image(
                            height: 100,
                            width: 100,
                            image: NetworkImage(productImage[index].toString()),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(productName[index].toString() ,
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 5,),
                                Text(productUnit[index].toString() +" "+r"RM "+ productPrice[index].toString() ,
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 5,),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: InkWell(
                                    onTap: (){
                                      print(index);
                                      print(index);
                                      print(productName[index].toString());
                                      print( productPrice[index].toString());
                                      print( productPrice[index]);
                                      print('1');
                                      print(productUnit[index].toString());
                                      print(productImage[index].toString());

                                      db!.insert(
                                        Cart(
                                            id: index,
                                            productId: index.toString(),
                                            productName: productName[index].toString(),
                                            initialPrice: productPrice[index],
                                            productPrice: productPrice[index],
                                            quantity: 1,
                                            unitTag: productUnit[index].toString(),
                                            image: productImage[index].toString())
                                      ).then((value){

                                        cart.addTotalPrice(double.parse(productPrice[index].toString()));
                                        cart.addCounter();

                                        final snackBar = SnackBar(backgroundColor: Colors.green,content: Text('Product is added to cart'), duration: Duration(seconds: 1),);

                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);

                                      }).onError((error, stackTrace){
                                        print("error"+error.toString());
                                        final snackBar = SnackBar(backgroundColor: Colors.red ,content: Text('Product is already added in cart'), duration: Duration(seconds: 1));

                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                      });
                                    },
                                    child:  Container(
                                      height: 35,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: const Center(
                                        child:  Text('Add to cart' , style: TextStyle(color: Colors.white),),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )

                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
          ),

        ],
      ),
      bottomNavigationBar: HomeBottomButton(),
    );
  }
}