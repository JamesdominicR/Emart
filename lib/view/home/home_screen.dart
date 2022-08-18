import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kiddy_market/core/colors/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiddy_market/core/constants.dart';
import 'package:kiddy_market/view/home/widgets/carousel_widget.dart';
import 'package:kiddy_market/view/home/widgets/search_bar.dart';
import 'package:kiddy_market/view/home/widgets/sectiontitle_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
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
        title: SearchBar(
          onPressed: () {},
        ),
        bottom: PreferredSize(
        preferredSize: const Size.fromHeight(5),
          child: Container(
            height: 2.h,
            width: double.infinity,
            color: kIconcolor,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: kIconcolor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //shrinkWrap: true,
            children: [
              CarouselSlider(
                items: const [
                  CarouselWidget(
                    image: AssetImage('assets/Images/Image home1.jpg'),
                  ),
                  CarouselWidget(
                    image: AssetImage('assets/Images/Image home 2.jpg'),
                  ),
                  CarouselWidget(
                    image: AssetImage('assets/Images/Image hoem3.webp'),
                  ),
                ],
                options: CarouselOptions(
                  height: 180,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  initialPage: 2,
                ),
              ),
              SizedBox(height: 14.h),
              Divider(
                height: 6.h,
                thickness: 5,
                color: const Color(0xfff3f9ff),
              ),
              SizedBox(height: 10.h),
             const Padding(
                padding: EdgeInsets.only(left: 14),
                child: SectionTitle(
                  title: 'Exclusive Deals',
                  button: 'View all',
                ),
              ),
             SizedBox(height: 20),
             Padding(
               padding: const EdgeInsets.only(left: 15,right: 15),
               child: Row(children: [
                ProductCard(),
                ProductCard(),
               ],)
             ),
             SizedBox(height: 5),
            
            ],
          ),
        ),
      ),
    );
  }
}

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

