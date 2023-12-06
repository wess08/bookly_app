import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h, bottom: 42.h),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 19.h,
          ),
          const Spacer(),
          SizedBox(
            width: 25.h,
            height: 25.h,
            child: InkWell(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kSearchView);
              },
              child: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
