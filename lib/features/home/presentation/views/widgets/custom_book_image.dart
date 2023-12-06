import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://4.bp.blogspot.com/-ze3sNcZHocg/V8G6hje4UXI/AAAAAAAAyMA/dMF1qC7m7hYKlBm3FLBIEqEU_yRZZ5JpQCLcB/s640/The-Jungle-Book-2016%2Bcover.jpg"))),
      ),
    );
  }
}
