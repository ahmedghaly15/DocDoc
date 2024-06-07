import 'package:cached_network_image/cached_network_image.dart';
import 'package:docdoc/src/config/themes/app_text_styles.dart';
import 'package:docdoc/src/core/widgets/my_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(bottom: 16.h),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://w0.peakpx.com/wallpaper/875/324/HD-wallpaper-sasuke-uchiha-naruto-sasuke-uchiha.jpg',
                  height: 110.h,
                  width: 110.w,
                ),
              ),
              MySizedBox.width16,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Doctor name',
                      style: AppTextStyles.font16DarkBlueBold,
                    ),
                    MySizedBox.height8,
                    Text(
                      'General | RSUD Gatot Subroto',
                      style: AppTextStyles.font12GreyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
