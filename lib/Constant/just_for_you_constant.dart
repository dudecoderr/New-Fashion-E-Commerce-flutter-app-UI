import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String Files/string_file.dart';

class Just_for_you_Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: jacket_1,
            image_caption: Harris_Tweed_sub1,
            New_price: price120String,
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: jacket_2,
            image_caption: Cashmere_Blend_sub2,
            New_price: price120String,
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: jacket_1,
            image_caption: Harris_Tweed_sub1,
            New_price: price120String,
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;

  final String image_caption;

  final String? New_price;

  Category({
    required this.image_location,
    required this.image_caption,
    this.New_price,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          // color: Colors.red,
          width: 255.w,
          height: 390.h,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image_location,
                width: 254.89.w,
                height: 311.64.h,
                fit: BoxFit.cover,
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        image_caption,
                        style: TextStyle(
                          fontFamily: 'Tenor Sans',
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        New_price!,
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
