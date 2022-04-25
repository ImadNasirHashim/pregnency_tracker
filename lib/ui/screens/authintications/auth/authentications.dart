import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnany_tracker/ui/custom_widgets/custom_textfield.dart';
import 'package:pregnany_tracker/ui/screens/authintications/auth/authentication_provider.dart';
import 'package:pregnany_tracker/ui/screens/authintications/auth/sign_in_screen.dart';
import 'package:pregnany_tracker/ui/screens/authintications/auth/sign_up_screen.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/style.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthenticationProvider>(
      create: (context) => AuthenticationProvider(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Consumer<AuthenticationProvider>(builder: (context, model, child) {
          return Container(
            margin: EdgeInsets.only(left: 20.w,right: 20.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  model.renderScreen==0?Container(
                    height: MediaQuery.of(context).size.height / 4,
                    child: Image.asset("assets/images/login_png.png"),
                  ):Container(
                    height: MediaQuery.of(context).size.height / 5,
                    child: Image.asset("assets/images/signup_png.png"),
                  ),
                  model.renderScreen==0?SizedBox(
                    height: 30.h,
                  ):SizedBox(height: 15.h,),
                  Text(
                    "Pregnancy Tracker".toUpperCase(),
                    style: titleTextStyle,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: ()
                            {
                              model.renderScreenFun(0);
                            },
                            child: Container(
                              child: Text("Sign in".toUpperCase(),
                                  style: model.renderScreen==0?normalTextStylePinkColor:normalTextStyleBlackColor),
                            ),
                          ),
                          model.renderScreen==0?Container(
                            height: 10.h,
                            width: 10.w,
                            decoration:  BoxDecoration(
                                color: pinkColor, shape: BoxShape.circle),
                          ):SizedBox(),
                        ],
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Container(
                        height: 20,
                        width: 2,
                        decoration: BoxDecoration(
                            color: Colors.pink.shade200,
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: ()
                            {
                              model.renderScreenFun(1);
                            },
                            child: Container(
                              child: Text(
                                "Sign up".toUpperCase(),
                                style: model.renderScreen==0?normalTextStyleBlackColor:normalTextStylePinkColor,
                              ),
                            ),
                          ),
                          model.renderScreen==1?Container(
                            height: 10,
                            width: 10,
                            decoration:  BoxDecoration(
                                color: pinkColor, shape: BoxShape.circle),
                          ):SizedBox(),
                        ],
                      ),
                    ],
                  ),

                  model.renderScreen==0?SignInScreen():SignUpScreen(),

                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
