
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pregnany_tracker/ui/custom_widgets/custom_appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/style.dart';
import '../wight_tracker/weight_tracker_screen.dart';

class ToolsScreen extends StatelessWidget {
  const ToolsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar("Tools"),
      body: Container(
        margin: EdgeInsets.only(left: 15.w,right: 15.w),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),

            widgetTools(setIcon: "assets/icons/wscale1.png",
            title: 'Weight Tracker',
              subTitles: 'Overall Status',
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WeightTrackerScreen()));
              }
            ),

            SizedBox(height: 20.h,),
            widgetTools(setIcon: "assets/icons/heart.png",
                title: 'Blood Pressure Tracker',
                subTitles: 'Records and Status'
            ),

            SizedBox(height: 20.h,),
            widgetTools(setIcon: "assets/icons/kick.png",
                title: 'Kick Counter',
                subTitles: 'Check Progress'
            ),

            SizedBox(height: 20.h,),
            widgetTools(setIcon: "assets/icons/advice.png",
                title: 'Helpful Tips',
                subTitles: 'During Pregnancy'
            ),

            SizedBox(height: 20.h,),





          ],
        ),
      ),
    );
  }

  Widget widgetTools({title,subTitles,setIcon,onPressed})
  {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.only(left: 15.w,right: 15.w,top: 20.h,bottom: 20.h),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0,2), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(title,style: titleTextStyle,),
                SizedBox(height: 5.h,),
                Text(subTitles,style: TextStyle(fontFamily: 'Avenir',fontSize: 15.sp),),
              ],
            ),
            Row(
              children: [
                Image.asset(setIcon),
                SizedBox(width: 10.w,),
                SvgPicture.asset("assets/icons/arrow.svg",width: 20.w,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
