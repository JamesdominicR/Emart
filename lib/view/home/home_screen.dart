import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kiddy_market/core/colors/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiddy_market/core/constants.dart';
import 'package:kiddy_market/view/home/widgets/carousel_widget.dart';
import 'package:kiddy_market/view/home/widgets/product_carousel.dart';
import 'package:kiddy_market/view/home/widgets/search_bar.dart';
import 'package:kiddy_market/view/home/widgets/sectiontitle_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser!;

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
          child: SingleChildScrollView(
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
                    pageSnapping: true,
                  ),
                ),
                SizedBox(height: 14.h),
                Divider(
                  height: 6.h,
                  thickness: 5,
                  color: const Color(0xfff3f9ff),
                ),
                kHeight10,
               const Padding(
                  padding: EdgeInsets.only(left: 14),
                  child: SectionTitle(
                    title: 'Exclusive Deals',
                    button: 'View all',
                  ),
                ),
             kHeight20,
               SizedBox(
                height: 230,
                child: ProductCarousel()),
              kHeight10,
              const Padding(
                padding: EdgeInsets.only(left: 14),
                child: SectionTitle(title: 'Most Popular',
                 button: 'View all'),
              ),
              kHeight20,
               SizedBox(
                height: 230,
                child: ProductCarousel()),
                FlatButton(onPressed: () {
                FirebaseAuth.instance.signOut();
                  print(FirebaseAuth.instance);
                },
                color: Colors.blue, 
                child: Text('ok',
                style: TextStyle(fontSize: 15),
                ),
                
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

