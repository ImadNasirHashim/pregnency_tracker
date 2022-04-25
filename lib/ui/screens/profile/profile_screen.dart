import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnany_tracker/core/constants/colors.dart';
import 'package:pregnany_tracker/core/constants/style.dart';

import '../../custom_widgets/custom_appbar.dart';
import '../../custom_widgets/custom_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar("Profile",),
      body: Container(
        margin: EdgeInsets.only(left: 15.w, right: 20.w),
        child: Column(
          children: [



            // CustomPaint(
            //   size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.width),
            //   painter: HeartPainter(),
            //
            // ),


            Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          // margin: EdgeInsets.only(bottom: 30),
                          padding: EdgeInsets.all(2.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            border: Border.all(
                              color: pinkColor,
                              width: 4.0,
                            ),
                          ),
                          child: CircleAvatar(
                              radius: 70.w,
                              backgroundImage:
                                  AssetImage('assets/icons/profile_icon.png')),
                        ),
                        Container(
                          // margin: EdgeInsets.only(right: 8, bottom: 28),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: pinkColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.only(),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            onPressed: () {},
                            child: Icon(
                              Icons.add_a_photo,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 20.h,
                    ),

                    Text("Isabella Beck",style: normalTextStyleBlackColorBold,),

                    SizedBox(
                      height: 5.h,
                    ),
                    // Text("isabella22@gmail.com",style: normalTextStyleBlackColorBold,),
                    // SizedBox(
                    //   height: 20.h,
                    // ),
                    //
                    // CustomContainer(
                    //   setTitle: "Isabella Beck",
                    //   setIcon: "assets/icons/profilename.svg",
                    // ),
                    // SizedBox(
                    //   height: 15.h,
                    // ),
                    // CustomContainer(
                    //   setTitle: "isabella22@gmail.com",
                    //   setIcon: "assets/icons/profilename.svg",
                    // ),
                    // SizedBox(
                    //   height: 15.h,
                    // ),
                    // CustomContainer(
                    //   setTitle: "+1-987654321",
                    //   setIcon: "assets/icons/profilename.svg",
                    // ),
                    // SizedBox(
                    //   height: 15.h,
                    // ),



                    CustomContainer(
                      setTitle: "23, July 1997",
                      setIcon: "assets/icons/profilename.svg",
                    ),
                    SizedBox(
                      height: 15.h,
                    ),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class HeartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint();
    paint
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2;

    Paint paint1 = Paint();
    paint1
      ..color = Colors.red
      ..style = PaintingStyle.fill
      ..strokeWidth = 0;

    double width = size.width;
    double height = size.height;

    Path path = Path();
    path.moveTo(0.5 * width, height * 0.35);
    path.cubicTo(0.2 * width, height * 0.1, -0.25 * width, height * 0.6,
        0.5 * width, height);
    path.moveTo(0.5 * width, height * 0.35);
    path.cubicTo(0.8 * width, height * 0.1, 1.25 * width, height * 0.6,
        0.5 * width, height);

    canvas.drawPath(path, paint1);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
