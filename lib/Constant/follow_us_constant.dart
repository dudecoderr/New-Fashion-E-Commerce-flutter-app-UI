import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String Files/string_file.dart';

class FollowUs extends StatelessWidget {
  const FollowUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Category(
                image_location: follow_us1,
              ),
              Category(
                image_location: follow_us2,
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Category(
                image_location: follow_us3,
              ),
              Category(
                image_location: follow_us4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;

  Category({
    required this.image_location,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
          child: Image.asset(
        image_location,
        width: 164.w,
        height: 164.h,
        fit: BoxFit.cover,
      )),
    );
  }
}
