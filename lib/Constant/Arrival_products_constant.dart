import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String Files/string_file.dart';

class arrival_Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Category(
              image_location: 'assets/arrival_1.png',
              image_caption: arrival_image_caption,
              New_price: price120String,
            ),
            SizedBox(width: 5),
            Category(
              image_location: 'assets/arrival_2.png',
              image_caption: arrival_image_caption,
              New_price: price120String,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Category(
              image_location: 'assets/arrival_3.png',
              image_caption: arrival_image_caption,
              New_price: price120String,
            ),
            SizedBox(width: 5),
            Category(
              image_location: 'assets/arrival_4.png',
              image_caption: Oblong_bag,
              New_price: price120String,
            ),
          ],
        ),
      ],
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
          width: 160.w,
          height: 260.16.h,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image_location,
                width: 165.w,
                height: 200.h,
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
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        New_price!,
                        style: TextStyle(
                            fontFamily: 'Tenor Sans',
                            color: Color(0xFFDD8560),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
