import 'package:docdoc/src/config/themes/app_colors.dart';
import 'package:docdoc/src/config/themes/app_text_styles.dart';
import 'package:docdoc/src/core/utils/app_assets.dart';
import 'package:docdoc/src/core/widgets/my_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
          child: Column(
            children: [
              CircleAvatar(
                radius: 28.r,
                backgroundColor: AppColors.primaryColor,
                child: SvgPicture.asset(
                  AppAssets.svgsGeneralSpeciality,
                  height: 24.h,
                  width: 24.w,
                ),
              ),
              MySizedBox.height12,
              Text(
                'Speciality',
                style: AppTextStyles.font12DarkBlueRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
