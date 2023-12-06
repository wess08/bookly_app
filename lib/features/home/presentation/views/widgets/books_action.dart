import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  bottomLeft: Radius.circular(16.r)),
              textContent: "19.99€",
              fontSize: 16,
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: const Color(0xFFEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16.r),
                  bottomRight: Radius.circular(16.r)),
              textContent: "Free preview",
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}