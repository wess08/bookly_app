import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 20.h,
          ),
          const Spacer(),
          GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                AssetsData.whiteSearchIcon,
                width: 25.h,
                height: 25.h,
              ))
        ],
      ),
    );
  }
}
