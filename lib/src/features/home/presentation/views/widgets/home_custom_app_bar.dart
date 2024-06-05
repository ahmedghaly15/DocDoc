import 'package:docdoc/src/config/themes/app_colors.dart';
import 'package:docdoc/src/config/themes/app_text_styles.dart';
import 'package:docdoc/src/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Omar!',
              style: AppTextStyles.font18BoldDarkBlue,
            ),
            Text(
              'How are you today?',
              style: AppTextStyles.font12Grey616161Regular,
            ),
          ],
        ),
        CircleAvatar(
          radius: 20.r,
          backgroundColor: AppColors.greyF5F5F5,
          child: SvgPicture.asset(AppAssets.svgsNotificationsIcon),
        ),
      ],
    );
  }
}
