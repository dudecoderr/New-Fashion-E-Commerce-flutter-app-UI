import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String Files/string_file.dart';

class OpenFashionContainerConstant extends StatelessWidget {
  const OpenFashionContainerConstant({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 465.h,
      width: 375.w,
      color: Color(0xFFF2F2F2),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 25),
        child: Column(
          children: [
            Image.asset(
              Logo,
              height: 40.h,
              width: 97.61.w,
            ),
            SizedBox(height: 16.w),
            SizedBox(
              width: 210.w,
              child: const Text(
                Making_luxurious_subtext,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Tenor Sans'),
              ),
            ),
            SizedBox(height: 10.h),
            Image.asset(
              divider_homepage,
              width: 124.w,
              height: 9.h,
            ),
            SizedBox(height: 18.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      Sticker_1,
                      width: 49.77.w,
                      height: 34.91.h,
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: 129.w,
                      child: const Text(
                        Fast_shipping_sub,
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 13, fontFamily: 'Tenor Sans'),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      Sticker_2,
                      width: 49.77.w,
                      height: 34.91.h,
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: 129.w,
                      child: Text(
                        Sustainable_sub,
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 13, fontFamily: 'Tenor Sans'),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 18.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      Sticker_3,
                      width: 49.77.w,
                      height: 34.91.h,
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: 129.w,
                      child: Text(
                        Unique_sub,
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 13, fontFamily: 'Tenor Sans'),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      Sticker_4,
                      width: 49.77.w,
                      height: 34.91.h,
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: 129.w,
                      child: Text(
                        Fast_shipping_sub,
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 13, fontFamily: 'Tenor Sans'),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 33.h),
            Image.asset(
              lining_symbol_openfashion,
              height: 39.56.h,
              width: 66.52.w,
            )
          ],
        ),
      ),
    );
  }
}
