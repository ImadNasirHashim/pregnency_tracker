




import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pregnany_tracker/core/constants/style.dart';
import 'package:pregnany_tracker/ui/screens/home/home_screen.dart';
import '../../../../core/constants/colors.dart';
import '../../../custom_widgets/custom_button.dart';
import '../../../custom_widgets/custom_textfield.dart';
class SignUpScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        CustomTextField(
          textInputAction: TextInputAction.next,
          keyBoardType: TextInputType.name,
          hintText: 'Full Name',
          preFixIcon: Icon(Icons.ten_k),
        ),
        SizedBox(
          height: 15.h,
        ),
        CustomTextField(
          textInputAction: TextInputAction.next,
          keyBoardType: TextInputType.emailAddress,
          hintText: 'Email',
          preFixIcon:Container(
            child: SvgPicture.asset(
              "assets/icons/profilename.svg",
              fit: BoxFit.cover,

              height: 10,
            ),
          )
        ),
        SizedBox(
          height: 15.h,
        ),
        CustomTextField(

          textInputAction: TextInputAction.next,
          keyBoardType: TextInputType.visiblePassword,
          hintText: 'Password',
          preFixIcon: Icon(Icons.ten_k),
        ),
        SizedBox(
          height: 15.h,
        ),
        CustomTextField(
          textInputAction: TextInputAction.next,
          hintText: 'Confirm Password',
          keyBoardType: TextInputType.visiblePassword,
          preFixIcon: Icon(Icons.ten_k),
        ),
        SizedBox(
          height: 15.h,
        ),
        CustomTextField(
          hintText: 'Enter Your Delivery Date',
          preFixIcon: Icon(Icons.ten_k),
        ),
        SizedBox(
          height: 15.h,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'Forgot Password?',
            style: TextStyle(color: Color(0xffFF6969)),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),

        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 2.0,
                color: Colors.grey
              ),
            ),
            SizedBox(width: 15.w,),
            Text('OR',style: normalTextStyleBlackColor,),
            SizedBox(width: 15.w,),
            Expanded(
              child: Divider(
                thickness: 2.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),

        CustomTextField(
          hintText: 'Enter Your Delivery Date',
          preFixIcon: Icon(Icons.ten_k),
        ),
        SizedBox(
          height: 15.h,
        ),


        CustomButton(title: "Sign Up",onPressed: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          },)
      ],
    );
  }
}
