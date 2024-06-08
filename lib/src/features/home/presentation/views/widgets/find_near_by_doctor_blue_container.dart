import 'package:docdoc/src/config/themes/app_colors.dart';
import 'package:docdoc/src/config/themes/app_text_styles.dart';
import 'package:docdoc/src/core/utils/app_assets.dart';
import 'package:docdoc/src/core/widgets/my_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FindNearByDoctorBlueContainer extends StatelessWidget {
  const FindNearByDoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 165.h,
            width: double.infinity,
            padding: EdgeInsets.only(top: 12.h, left: 18.w, bottom: 15.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: const DecorationImage(
                image: AssetImage(
                  AppAssets.imagesHomeBluePattern,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: AppTextStyles.font18WhiteMedium,
                ),
                MySizedBox.height16,
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48.r),
                      ),
                      textStyle: AppTextStyles.font12Regular,
                      foregroundColor: AppColors.primaryColor,
                    ),
                    child: const Text('Find Nearby'),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16.w,
            top: 0,
            child: Image.asset(AppAssets.imagesGirlDoctor, height: 200.h),
          ),
        ],
      ),
    );
  }
}
