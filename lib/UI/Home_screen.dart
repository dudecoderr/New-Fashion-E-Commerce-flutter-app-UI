import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Constant/Arrival_products_constant.dart';
import '../Constant/Trending_constant.dart';
import '../Constant/explore_mor_Logo_constant.dart';
import '../Constant/follow_us_constant.dart';
import '../Constant/just_for_you_constant.dart';
import '../Constant/open_fashion_containet_constant.dart';
import '../Constant/social_details.dart';
import '../String Files/string_file.dart';
import 'Product Detail.dart';

class Home_screen extends StatelessWidget {
  Home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets/align-left.png",
          height: 24.h,
          width: 24.w,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Image.asset(
          "assets/Logo.png",
          height: 32.h,
          width: 78.w,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 25.sp,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 25.sp,
            ),
          ),
        ],
        backgroundColor: Color(0xFFE7EAEF),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///====================== banner code=============================
            Container(
              height: 600.h,
              width: 375.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      Banner_home_screen,
                    ),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 231),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Luxury.toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'Bodoni Moda',
                        color: Color(0xFF333333).withOpacity(0.7),
                        fontSize: 36.66.sp,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48),
                      child: Text(
                        Fashion.toUpperCase(),
                        style: TextStyle(
                          fontFamily: 'Bodoni Moda',
                          color: Color(0xFF333333).withOpacity(0.7),
                          fontSize: 36.66.sp,
                        ),
                      ),
                    ),
                    Text(
                      Accessories.toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'Bodoni Moda',
                        color: Color(0xFF333333).withOpacity(0.7),
                        fontSize: 33.sp,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 170, left: 28),
                      child: SizedBox(
                        width: 253.w,
                        height: 40.h,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(ProductDetail());
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            Explore_Collection.toUpperCase(),
                            style: TextStyle(
                              fontFamily: 'Tenor Sans',
                              color: Color(0xFFFCFCFC),
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///============================  New Arrival code =======================
            SizedBox(height: 33.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text(
                    New_Arrival.toUpperCase(),
                    style: TextStyle(
                      letterSpacing: 4,
                      fontFamily: 'Tenor Sans',
                      fontSize: 20.sp,
                    ),
                  ),
                  Image.asset(
                    divider_homepage,
                    width: 124.w,
                    height: 9.h,
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            All,
                            style: TextStyle(
                              fontFamily: 'Tenor Sans',
                              color: Colors.black,
                              fontSize: 16.sp,
                            ),
                          ),
                          Image.asset(
                            Rectangle_1_dote,
                            height: 5.h,
                            width: 5.w,
                          ),
                        ],
                      ),
                      Text(
                        Apparel,
                        style: TextStyle(
                          fontFamily: 'Tenor Sans',
                          color: Color(0xFF888888),
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        Dress,
                        style: TextStyle(
                          fontFamily: 'Tenor Sans',
                          color: Color(0xFF888888),
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        Tshirt,
                        style: TextStyle(
                          fontFamily: 'Tenor Sans',
                          color: Color(0xFF888888),
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        Bag,
                        style: TextStyle(
                          fontFamily: 'Tenor Sans',
                          color: Color(0xFF888888),
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 23.h),

                  ///================= arival producte start========================
                  arrival_Products(),
                  //================ arival producte end========================

                  SizedBox(height: 27.h),

                  ///=================== Explore_More ===============
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Explore_More,
                        style: TextStyle(
                          fontFamily: 'Tenor Sans',
                          fontSize: 16.sp,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 18.sp,
                      )
                    ],
                  ),
                  SizedBox(height: 23.h),

                  ///=============  explor logo start ==================
                  Explore_Logo(),

                  ///=============  explor logo end ==================
                ],
              ),
            ),
            SizedBox(height: 16.h),

            ///=========================== collection code ================
            Text(
              Collections.toUpperCase(),
              style: TextStyle(
                letterSpacing: 4,
                fontFamily: 'Tenor Sans',
                color: Colors.black,
                fontSize: 18.sp,
              ),
            ),
            SizedBox(height: 16.h),
            Image.asset(
              Frame_2_oclober,
              height: 240.h,
              width: 375.w,
            ),
            Image.asset(
              Autumn_Collection,
              height: 296.h,
              width: 260.w,
            ),
            Image.asset(
              Video_img,
              height: 176.h,
              width: 375.w,
            ),
            SizedBox(height: 50.h),

            ///========================= Just_for_you_Products code start ====================
            Text(
              Just_for_You.toUpperCase(),
              style: TextStyle(
                fontFamily: 'Tenor Sans',
                letterSpacing: 4,
                fontSize: 18.sp,
              ),
            ),
            SizedBox(height: 10.h),
            Image.asset(
              divider_homepage,
              width: 124.w,
              height: 9.h,
            ),
            SizedBox(height: 22.h),
            Just_for_you_Products(),
            // Image.asset(Indicator, width: 34.2.w, height: 15.h),

            //========================= Just_for_you_Products code end ====================
            ///=============== Trending_hasteg code ==========================
            SizedBox(height: 58.h),
            Trending_hasteg(),
            SizedBox(height: 45.h),

            ///============= open fashion logo

            const OpenFashionContainerConstant(),

            ///=============== Follow Us =============
            SizedBox(height: 32.h),
            Column(
              children: [
                Text(
                  Follow_Us,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: 'Tenor Sans',
                    letterSpacing: 4,
                  ),
                ),
                SizedBox(height: 8.h),
                Image.asset(
                  Instagram,
                  height: 24.h,
                  width: 24.w,
                )
              ],
            ),
            SizedBox(height: 18.h),
            //== follow us code start =================
            const FollowUs(),
            //== follow us code end =================
            SizedBox(height: 18.h),

            ///=================== SocialDetails =============
            SocialDetails(),
          ],
        ),
      ),
    );
  }
}
