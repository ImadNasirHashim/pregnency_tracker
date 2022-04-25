



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors.dart';


class CustomButton extends StatelessWidget {
  final title;
  final onPressed;
  CustomButton({this.title,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 45.h,
        decoration: BoxDecoration(
            color: pinkColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(title.toUpperCase(),style: TextStyle(color: Colors.white,
            fontSize: 15.sp,
            fontFamily: 'Avenir', ),),
        ),
      ),
    );
  }
}
