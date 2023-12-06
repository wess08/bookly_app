import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, bottom: 27.h),
      child: Row(
        children: [
          SizedBox(
            height: 25.h,
            width: 25.h,
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.close
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 25.h,
            width: 25.h,
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.shopping_cart_outlined,
              ),
            ),
          )
        ],
      ),
    );
  }
}
