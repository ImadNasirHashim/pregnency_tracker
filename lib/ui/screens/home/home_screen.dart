import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pregnany_tracker/core/constants/colors.dart';
import 'package:pregnany_tracker/ui/screens/home/home_screen_provider.dart';
import 'package:provider/provider.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_widgets/custom_appbar.dart';
import '../calender/calender_screen.dart';
import '../profile/profile_screen.dart';
import '../tools/tools_screen.dart';
import 'home_main_screen.dart';

class HomeScreen extends StatelessWidget {
  final pages = [
     HomeMainScreen(),
    const ToolsScreen(),
    CalenderScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeScreenProvider>(
      create: (context) => HomeScreenProvider(),
      child: Consumer<HomeScreenProvider>(
        builder: (context, model, child) {
          return Scaffold(
            // appBar: CustomAppbar("Home",),
            backgroundColor: Colors.white,
            body: pages[model.pageIndex],
            bottomNavigationBar: Container(
              margin: EdgeInsets.only(bottom: 15.h,left: 15.w,right: 15.w,top: 5.h),
              height: 55.h,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 3), // Shadow position
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        enableFeedback: false,
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          model.onItemTapped(0);
                        },
                        icon: SvgPicture.asset(
                          "assets/icons/home.svg",
                          color: model.pageIndex == 0
                              ? pinkColor
                              : Color(0xffB6BCED),
                          height: 20.h,
                        )),
                    IconButton(
                        enableFeedback: false,
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          model.onItemTapped(1);
                        },
                        icon: SvgPicture.asset(
                          "assets/icons/tools.svg",
                          color: model.pageIndex == 1
                              ? pinkColor
                              : Color(0xffB6BCED),
                          height: 20.h,
                        )),
                    IconButton(
                        enableFeedback: false,
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          model.onItemTapped(2);
                        },
                        icon: SvgPicture.asset(
                          "assets/icons/calender.svg",
                          color: model.pageIndex == 2
                              ? pinkColor
                              : Color(0xffB6BCED),
                          height: 20.h,
                        )),
                    IconButton(
                        enableFeedback: false,
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          model.onItemTapped(3);
                        },
                        icon: SvgPicture.asset(
                          "assets/icons/profile.svg",
                          color: model.pageIndex == 3
                              ? pinkColor
                              : Color(0xffB6BCED),
                          height: 20.h,
                        )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
