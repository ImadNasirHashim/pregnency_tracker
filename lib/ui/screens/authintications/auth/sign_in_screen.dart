



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnany_tracker/core/constants/style.dart';
import '../../../../core/constants/colors.dart';
import '../../../custom_widgets/custom_button.dart';
import '../../../custom_widgets/custom_textfield.dart';
class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Text('Continue to Login',style: normalTextStylGreyColor,),
        SizedBox(
          height: 10.h,
        ),
        CustomTextField(
          keyBoardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          hintText: 'Email',
          preFixIcon: Icon(Icons.ten_k),
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextField(
          keyBoardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          hintText: 'password',
          preFixIcon: Icon(Icons.ten_k),
        ),
        SizedBox(
          height: 10.h,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'Forgot Password?',
            style: TextStyle(color: Color(0xffFF6969)),),
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomButton(title: 'Log In',)
      ],
    );
  }
}
