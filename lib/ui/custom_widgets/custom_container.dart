




import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/style.dart';
class CustomContainer extends StatelessWidget {
  final setTitle;
  final setIcon;

  CustomContainer({this.setTitle,this.setIcon});


  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 20.w,top: 15.h,bottom: 15.h),
      decoration: BoxDecoration(
          color: Color(0xffF0F0F0),
          borderRadius: BorderRadius.all(Radius.circular(15.w))
      ),
      child: Row(
        children: [
          SvgPicture.asset(setIcon,
            height: 15.h,),
          SizedBox(width: 15.w,),
          Text(setTitle,style: normalTextStyleBlackColor,)
        ],
      ),
    );
  }
}
