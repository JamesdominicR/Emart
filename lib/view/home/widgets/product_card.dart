import 'package:flutter/material.dart';
import 'package:kiddy_market/core/colors/colors.dart';

import '../../../core/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
         height: 124,
         width: 167,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.green,
         ),
        ),
        SizedBox(height: 8),
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
        Text('Shirt',
        style: style1,
        ),
        SizedBox(height: 10),
        Container(
         width: 167,
         height: 45,
        decoration: BoxDecoration(
         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
         color: Colors.blue,
        ),
        child: Center(
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
    );
  }
}

