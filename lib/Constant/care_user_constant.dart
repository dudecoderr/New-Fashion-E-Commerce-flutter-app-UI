import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String Files/string_file.dart';

class CareUser extends StatelessWidget {
  const CareUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Category(
            caption: Do_not_use,
            image_location: Do_Not_Bleach,
          ),
          SizedBox(height: 15.h),
          Category(
            caption: Do_not_tumble,
            image_location: Not_Tumble_Dry,
          ),
          SizedBox(height: 15.h),
          Category(
            caption: Dry_clean,
            image_location: Do_Not_Wash,
          ),
          SizedBox(height: 15.h),
          Category(
            caption: Iron_at,
            image_location: Iron_Low_Temperature,
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String caption;

  Category({
    required this.image_location,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image_location,
          height: 24.h,
          width: 24.w,
        ),
        SizedBox(width: 12.w),
        Text(
          caption,
          style: TextStyle(
            fontFamily: 'Tenor Sans',
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }
}
