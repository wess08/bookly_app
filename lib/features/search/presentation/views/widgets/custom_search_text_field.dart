import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  final void Function(String)? onSubmitted;
  final void Function()? onPressed;
  final TextEditingController controller;

  const CustomSearchTextField(
      {Key? key,
      required this.controller,
      required this.onSubmitted,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      controller: controller,
      onSubmitted: onSubmitted,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: "Search",
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 16,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: const BorderSide(color: Colors.white));
  }
}
