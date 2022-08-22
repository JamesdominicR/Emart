import 'package:flutter/material.dart';
import 'package:kiddy_market/core/colors/colors.dart';
import 'package:kiddy_market/core/constants.dart';

class ProductCarousel extends StatelessWidget {
   ProductCarousel({
    Key? key,
    
  }) : super(key: key);

  
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
    return ListView.builder(
     padding: const EdgeInsets.symmetric(horizontal: 10),
     shrinkWrap: true,
     scrollDirection: Axis.horizontal,
     itemCount: images.length,
     itemBuilder: (context, index) {
     return  Padding(
       padding: const EdgeInsets.only(right: 10),
       child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
         height: 124,
         width: 167,
         decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(images[index]),
          fit: BoxFit.fill,
          ),
           borderRadius: BorderRadius.circular(10),
           color: Colors.green,
         ),
        ),
        const SizedBox(height: 8),
        Row(
         mainAxisAlignment: MainAxisAlignment.start,
          children: const[
            Text('₹599',
            style: style1,
            ),
            SizedBox(width: 28),
            Text('₹599',
            style: TextStyle(
             fontSize: 15,
             fontWeight: FontWeight.w500,
             color: kBackgroundcolorBlue,
            ),
            
            ),
          ],
        ),
        const Text('Shirt',
        style: style1,
        ),
        const SizedBox(height: 10),
        Container(
         width: 167,
         height: 45,
        decoration: const BoxDecoration(
         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
         color: Colors.blue,
        ),
        child: const Center(
          child: Text('Add To Cart',
          style: TextStyle(
           fontSize: 15,
           fontWeight: FontWeight.w600,
           color: kWhitecolor,
          ),
          ),
        ),
        ),
      ],
    ),
     );
    }
    );
  }
}

