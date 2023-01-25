import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String Files/string_file.dart';

class SocialDetails extends StatelessWidget {
  const SocialDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// ==== icon follow us social =============
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              Twitter,
              height: 24.h,
              width: 24.w,
            ),
            Image.asset(
              Instagram_black,
              height: 24.h,
              width: 24.w,
            ),
            Image.asset(
              YouTube,
              height: 24.h,
              width: 24.w,
            )
          ],
        ),

        SizedBox(height: 10.h),
        Image.asset(
          divider_homepage,
          width: 124.96.w,
          height: 9.h,
        ),
        SizedBox(height: 22.h),
        Text(
          support_sub,
          style: TextStyle(fontSize: 16.sp, fontFamily: 'Tenor Sans'),
        ),
        SizedBox(height: 5.h),
        Text(
          support_number,
          style: TextStyle(fontSize: 16.sp, fontFamily: 'Tenor Sans'),
        ),
        SizedBox(height: 5.h),
        Text(
          support_day,
          style: TextStyle(fontSize: 16.sp, fontFamily: 'Tenor Sans'),
        ),
        SizedBox(height: 10.h),
        Image.asset(
          divider_homepage,
          width: 124.96.w,
          height: 9.h,
        ),
        SizedBox(height: 22.h),

        /// ==== about , contact ,blog =============
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              About,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Tenor Sans',
                  fontWeight: FontWeight.bold),
            ),
            Text(
              Contact,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Tenor Sans',
                  fontWeight: FontWeight.bold),
            ),
            Text(
              Blog,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Tenor Sans',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 22.h),

        Container(
          color: Color(0xFFD6D6D6).withOpacity(0.2),
          height: 45.25.h,
          width: 375.w,
          child: Padding(
            padding: const EdgeInsets.only(top: 22),
            child: Text(
              Copyright,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13.sp, fontFamily: 'Tenor Sans'),
            ),
          ),
        )
      ],
    );
  }
}
