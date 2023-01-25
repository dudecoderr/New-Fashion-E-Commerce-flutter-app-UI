import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Controller/like_Controller.dart';
import '../String Files/string_file.dart';

final LikeboxController likeboxController = Get.put(LikeboxController());

class You_May_Like_Products extends StatelessWidget {
  final List<String> imagesList = [like1, like2, like1, like2];

  You_May_Like_Products({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 540.h,
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            RxBool isLiked = false.obs;

            return Obx(() {
              isLiked.value;
              print('obx value ');
              return Category(
                image_location: imagesList[index],
                image_caption: WN21,
                Subtital: reversible_angora_cardigan,
                New_price: price120String,
                icon: isLiked.value == true
                    ? Icons.favorite
                    : Icons.favorite_border,
                function: () {
                  isLiked.value = !isLiked.value;
                  print('Hello function ${isLiked.value}');
                },
              );
            });
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 150 / 260,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              crossAxisCount: 2),
          itemCount: 4,
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  final String Subtital;
  final String? New_price;
  final IconData? icon;
  final VoidCallback function;

  Category({
    required this.image_location,
    required this.image_caption,
    this.New_price,
    required this.Subtital,
    this.icon,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            // color: Colors.yellow,
            width: 160.w,
            height: 270.16.h,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  image_location,
                  width: 165.w,
                  height: 200.h,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        image_caption,
                        style: TextStyle(
                            fontFamily: 'Tenor Sans',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        Subtital,
                        style: TextStyle(
                            fontFamily: 'Tenor Sans',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        New_price!,
                        style: TextStyle(
                            fontFamily: 'Tenor Sans',
                            color: const Color(0xFFDD8560),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            )),
        Positioned(
          left: 140,
          bottom: 90,
          child: GestureDetector(
            onTap: function,
            child: Icon(
              icon,
              color: const Color(0xFFDD8560),
              size: 25.sp,
            ),
          ),
        )
      ],
    );
  }
}
