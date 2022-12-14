import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rooda_apps/themes/themes.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.margin,
    required this.title,
    required this.onTap,
    this.height = 50,
    this.width = 0,
  }) : super(key: key);
  String title;
  double margin, width, height;
  void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      width: width,
      child: Material(
        color: primaryColor,
        borderRadius: BorderRadius.circular(30.r),
        child: InkWell(
          splashColor: secondaryColor,
          highlightColor: whiteColor.withAlpha(40),
          borderRadius: BorderRadius.circular(30.r),
          onTap: onTap,
          child: Container(
            height: height.w,
            alignment: Alignment.center,
            child: Text(
              title,
              style: heading2TextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
