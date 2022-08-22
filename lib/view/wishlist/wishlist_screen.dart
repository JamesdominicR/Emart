import 'package:flutter/material.dart';
import 'package:kiddy_market/core/colors/colors.dart';
class WishlistScreen extends StatelessWidget {
   WishlistScreen({Key? key}) : super(key: key);
final List images = [
    'assets/Images/product image 1.webp',
    'assets/Images/product image 1.webp',
    'assets/Images/product image 2.jpg',
    'assets/Images/product image 3.webp',
    'assets/Images/procuct image 4.webp',
    'assets/Images/product image 5.jpg',
    'assets/Images/product image  shoe.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text('Wishlist',
        style: TextStyle(
          color: kTextcolor,
        ),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
        itemCount: 1,
        itemBuilder: ( context,index) {
          return Padding(
            padding: const EdgeInsets.only(left: 12,top: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 120,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green,
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                     Container(
                      height: 120,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.green,
                         image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    
                      
                  Text("Allen Solly",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  ),
                  SizedBox(width: 118),                  Text("Allen Solly",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  ),
                  
                    
                    
                  ],
                ),
                SizedBox(
                    height: 10,
                  ),
                Row(
                    children: [
                      Text('₹599',
                      style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                      ),
                      SizedBox(width: 80),
                      //star box
                      Container(
                                    height: 16,
                                    width: 43,
                                    
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blue,
                                      
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text('⭑3.0',
                                      style: TextStyle(
                                        color: kWhitecolor,
                                        fontSize: 10,
                                      ),
                                      ),
                                    ),
                                  ),
                                  //2nd price
                                  SizedBox(width: 36),
                                  Text('₹599',
                      style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                      ),
                      SizedBox(width: 80),
                      Container(
                                    height: 16,
                                    width: 43,
                                    
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blue,
                                      
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text('⭑3.0',
                                      style: TextStyle(
                                        color: kWhitecolor,
                                        fontSize: 10,
                                      ),
                                      ),
                                    ),
                                  ),
                                  
        
                    ],
                  ),
              ],
            ),
          );
        }
        ),
      ),
    );
    
  }
}