import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Constant/Mohan_container_Constant.dart';
import '../Constant/care_user_constant.dart';
import '../Constant/social_details.dart';
import '../Constant/you_may_Like_constant.dart';
import '../Controller/home_controller.dart';
import '../String Files/string_file.dart';
import '../common file/expansiontile_common.dart';

final List<String> imgList = [
  banner_prodect_page,
  banner2_prodect_page,
  banner3
];

class ProductDetail extends StatelessWidget {
  // final CarouselController carouselController = CarouselController();

  // int _current = 0;
  final CarouselController _controller = CarouselController();
  final List indicatorList = [];

  HomeController homeController = Get.put(HomeController());

  ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///======================carouselController===============
    indicatorList.clear();
    for (int i = 0; i < 3; i++) {
      indicatorList.add('');
    }
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.west,
            color: Colors.black,
            size: 25.sp,
          ),
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
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 25.sp,
            ),
          ),
        ],
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*   Container(
              // height: 600.h,
              width: 600.w,
              child: Image.asset(
                banner_product_page,
                width: 375,
              ),
            ),
*/
            ///======================================carouselController================================================
            Obx(() {
              return Column(children: [
                CarouselSlider(
                  items: imageSliders,
                  carouselController: _controller,
                  options: CarouselOptions(
                      height: 460.h,
                      autoPlay: false,
                      enlargeCenterPage: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        // _current = index;
                        homeController.current.value = index;
                        // setState(() {
                        //
                        // });
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: indicatorList.asMap().entries.map((entry) {
                    return GestureDetector(
                      child: Transform.rotate(
                        angle: 2.2,
                        child: Container(
                          width: 5.h,
                          height: 5.h,
                          margin: EdgeInsets.symmetric(
                              vertical: 1, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: (homeController.current.value == entry.key
                                  ? Colors.black
                                  : Colors.grey)),
                        ),
                      ),
                    );
                  }).toList(),
                )
              ]);
            }),

            ///================= MohanProdectContainer ======================
            MohanProdectContainer(),
            SizedBox(
              height: 17.h,
            ),
            Container(
              height: 56.h,
              width: 375.w,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Add_to_basket,
                      style: TextStyle(
                          fontFamily: 'Tenor Sans',
                          fontSize: 16.sp,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 24.sp,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    MATERIALS,
                    style: TextStyle(
                      fontFamily: 'Tenor Sans',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    MATERIALS_sub,
                    style: TextStyle(
                      fontFamily: 'Tenor Sans',
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    CARE,
                    style: TextStyle(
                      fontFamily: 'Tenor Sans',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  SizedBox(
                    width: 320,
                    child: Text(
                      CARE_sub,
                      style: TextStyle(
                        fontFamily: 'Tenor Sans',
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.h),

                  ///=========== CareUser start ===========
                  CareUser(),
                  //=========== CareUser end ===========
                  SizedBox(
                    height: 20.h,
                  ),
                  //========== ExpansionTile -------------
                  Text(
                    CARE,
                    style: TextStyle(
                      fontFamily: 'Tenor Sans',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  CommonExpansionTile(
                    text: free_flat,
                    leading: Icons.local_shipping_outlined,
                    iconColor: Colors.grey,
                    desc: Estimated,
                  ),
                  CommonExpansionTile(
                    text: COD_Policy,
                    leading: Icons.sell,
                    iconColor: Colors.grey,
                    desc: Estimated,
                  ),
                  CommonExpansionTile(
                    text: Return_Policy,
                    leading: Icons.cached,
                    iconColor: Colors.grey,
                    desc: Estimated,
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),

            ///========================= You may also like code start ====================
            Text(
              You_may.toUpperCase(),
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
            You_May_Like_Products(),
            SizedBox(
              height: 20.h,
            ),

            ///=================== SocialDetails =============
            const SocialDetails(),
          ],
        ),
      ),
    );
  }
}

///===== carusal slider image container ================

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          // color: Colors.yellow,
          child: Container(
            margin: EdgeInsets.all(10.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: 350.w,
                      height: 460.h,
                    ),
                    Positioned(
                      bottom: 5.0,
                      right: 0.0,
                      child: Container(
                        height: 70.h,
                        margin: EdgeInsets.all(8),
                        child: Padding(
                          padding: EdgeInsets.only(left: 280, top: 35),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/zoom_icon.png",
                                height: 38.h,
                                width: 38.h,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
