import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String Files/string_file.dart';

class MohanProdectContainer extends StatelessWidget {
  const MohanProdectContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      width: 375.w,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  MOHAN,
                  style: TextStyle(
                      fontFamily: 'Tenor Sans',
                      letterSpacing: 4,
                      fontSize: 16.sp),
                ),
                Icon(
                  Icons.file_upload_outlined,
                  size: 22.sp,
                )
              ],
            ),
            SizedBox(height: 5.h),
            Text(
              Recycle,
              style: TextStyle(fontFamily: 'Tenor Sans', fontSize: 16.sp),
            ),
            SizedBox(height: 5.h),
            Text(
              price120String,
              style: TextStyle(
                  color: Color(0xFFDD8560),
                  fontFamily: 'Tenor Sans',
                  fontSize: 18.sp),
            ),
            SizedBox(height: 18.h),
            //========= color container==================
            Row(
              children: [
                Text(
                  colors_produce,
                  style: TextStyle(fontFamily: 'Tenor Sans', fontSize: 12.sp),
                ),
                SizedBox(width: 10.w),
                Container(
                  height: 21.h,
                  width: 21.h,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(width: 5.w),
                Container(
                  height: 21.h,
                  width: 21.h,
                  decoration: BoxDecoration(
                    color: Color(0xFFDD8560),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(width: 5.w),
                Container(
                  height: 21.h,
                  width: 21.h,
                  decoration: BoxDecoration(
                    color: Color(0xFFE1E0DB),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(width: 35.w),
                Text(
                  Size,
                  style: TextStyle(fontFamily: 'Tenor Sans', fontSize: 12.sp),
                ),
                SizedBox(width: 10.h),
                SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Center(
                      child: Text(
                        "S",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontFamily: "Tenor Sans"),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Text(
                        "M",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.sp,
                            fontFamily: "Tenor Sans"),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Text(
                        "L",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.sp,
                            fontFamily: "Tenor Sans"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
