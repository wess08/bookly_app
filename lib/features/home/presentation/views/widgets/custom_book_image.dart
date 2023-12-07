import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookImage extends StatelessWidget {
  final String imageUrl;

  const CustomBookImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: imageUrl.isEmpty
            ? const Icon(Icons.error)
            : CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.fill,
              ));
  }
}
