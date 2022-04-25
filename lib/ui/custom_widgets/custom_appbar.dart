



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnany_tracker/core/constants/style.dart';
import '../../core/constants/colors.dart';
PreferredSizeWidget CustomAppbar (String setTitle) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: pinkColor,
    toolbarHeight: 80.h,
    title: Center(child: Text(setTitle,style: normalTextStyleWhiteColor,)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(20.0),
      ),
    ),
  );
}
