import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String Files/string_file.dart';

class Trending_hasteg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        // color: Colors.yellow,
        height: 180.h,
        width: 375.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              Trending.toUpperCase(),
              style: TextStyle(
                fontSize: 20.sp,
                fontFamily: 'Tenor Sans',
                letterSpacing: 4,
              ),
            ),
            Image.asset(
              divider_homepage,
              width: 124.w,
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  h2021,
                  style: TextStyle(fontSize: 14.sp, fontFamily: 'Tenor Sans'),
                ),
                Text(
                  spring,
                  style: TextStyle(fontSize: 14.sp, fontFamily: 'Tenor Sans'),
                ),
                Text(
                  collection,
                  style: TextStyle(fontSize: 14.sp, fontFamily: 'Tenor Sans'),
                ),
                Text(
                  fall,
                  style: TextStyle(fontSize: 14.sp, fontFamily: 'Tenor Sans'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  dress,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Tenor Sans'),
                ),
                Text(
                  autumncollection,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Tenor Sans'),
                ),
                Text(
                  openfashion,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Tenor Sans'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
