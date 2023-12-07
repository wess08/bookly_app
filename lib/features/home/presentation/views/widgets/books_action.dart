import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  final BookModel book;

  const BooksAction({Key? key, required this.book}) : super(key: key);

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
                onPressed: null),
          ),

          Expanded(
            child: CustomButton(
                backgroundColor: const Color(0xFFEF8262),
                textColor: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16.r),
                    bottomRight: Radius.circular(16.r)),
                textContent: getText(book),
                fontSize: 16,
                onPressed: book.volumeInfo.previewLink == null
                    ? null
                    : () async {
                        Uri url = Uri.parse(book.volumeInfo.previewLink!);
                        if (!await launchUrl(url)) {
                          throw Exception('Could not launch $url');
                        }
                      }),
          )
        ],
      ),
    );
  }

  getText(BookModel book) {
    if (book.volumeInfo.previewLink == null) {
      return "Not available";
    } else {
      return "Preview";
    }
  }
}
