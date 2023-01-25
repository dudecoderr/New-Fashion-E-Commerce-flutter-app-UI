import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String Files/string_file.dart';

class Explore_Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      height: 180.h,
      width: 375.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(
            divider_homepage,
            width: 124.w,
            height: 12.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                Prada_logo,
                width: 69.32.w,
                height: 19.69.h,
              ),
              Image.asset(
                Burberry_logo,
                width: 98.32.w,
                height: 19.31.h,
              ),
              Image.asset(
                Boss_logo,
                width: 52.6.w,
                height: 19.73.h,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                Catier_logo,
                width: 72.17.w,
                height: 20.01.h,
              ),
              Image.asset(
                Gucci_logo,
                width: 94.26.w,
                height: 14.71.h,
              ),
              Image.asset(
                Tiffany_logo,
                width: 98.36.w,
                height: 12.64.h,
              ),
            ],
          ),
          Image.asset(
            divider_homepage,
            width: 124.w,
            height: 12.h,
          ),
        ],
      ),
    );
  }
}
