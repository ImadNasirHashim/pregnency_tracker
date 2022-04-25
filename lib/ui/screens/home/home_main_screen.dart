import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pregnany_tracker/core/constants/style.dart';
import 'package:pregnany_tracker/ui/custom_widgets/custom_appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../core/constants/colors.dart';

class HomeMainScreen extends StatefulWidget {
  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  var currentIndex = 0;
  var downListView=0;

  final scrollDirection = Axis.horizontal;

  late AutoScrollController controller;
  late List<List<int>> randomList;

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);

    controller.scrollToIndex(15, preferPosition: AutoScrollPosition.begin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar("Home"),
      body: Container(
        margin: EdgeInsets.only(left: 15.w, right: 15.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.w,
              ),
              Center(
                  child: Text(
                "You are Pregnant for",
                style: hintTextStyl,
              )),

              Container(
                height: 80.h,
                child: ListView(
                  scrollDirection: scrollDirection,
                  controller: controller,
                  children: <Widget>[
                    ...List.generate(36, (index) {
                      currentIndex = index + 1;
                      return AutoScrollTag(
                        key: ValueKey(index),
                        controller: controller,
                        index: index,
                        child: Container(
                            height: 60.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: index <= 16 ? pinkColor : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  currentIndex.toString(),
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Avenir',
                                    color:
                                        index <= 16 ? Colors.white : pinkColor,
                                  ),
                                ),
                                Text(
                                  "Week",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: 'Avenir',
                                    color:
                                        index <= 16 ? Colors.white : pinkColor,
                                  ),
                                ),
                              ],
                            )),
                        highlightColor: Colors.black.withOpacity(0.1),
                      );
                    }),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 4,
                child: Image.asset(
                  "assets/images/baby.png",
               fit: BoxFit.cover,

                ),
              ),

              ///=========================================== vertical Scroll View ===============================================
              ///
              ///

              Container(
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  // physics: ScrollPhysics(),
                  primary: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    downListView = index+1;
                    return Container(
                      margin: EdgeInsets.only(top: 15.h),
                      decoration: BoxDecoration(
                          color: Color(0xffE0EFF1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        children: [
                          Image.asset(imagesList[index]),
                          SizedBox(
                            width: 15.w,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Week " + downListView.toString(),
                                  style: hintTextStyl,
                                ),
                                SizedBox(height: 5.h,),
                                Text(
                                  "Phasellus iaculis faucibus masa, Quisque sit amet velit ",
                                  style: normalTextStyleBlackColor,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              // Container(
              //   height: 80.h,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: 36,
              //     shrinkWrap: true,
              //     itemBuilder: (context, index) {
              //       currentIndex = index + 1;
              //       return Container(
              //           height: 60.h,
              //           width: 60.w,
              //           decoration: BoxDecoration(
              //             shape: BoxShape.circle,
              //             color: index <= 16 ? pinkColor : Colors.white,
              //             boxShadow: [
              //               BoxShadow(
              //                 color: Colors.grey.withOpacity(0.4),
              //                 spreadRadius: 2,
              //                 blurRadius: 5,
              //                 offset: Offset(0, 2), // changes position of shadow
              //               ),
              //             ],
              //           ),
              //           margin: EdgeInsets.only(left: 20),
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             children: [
              //               Text(
              //                 currentIndex.toString(),
              //                 style: TextStyle(
              //                   fontSize: 18.sp,
              //                   fontWeight: FontWeight.w600,
              //                   fontFamily: 'Avenir',
              //                   color: index <= 16 ? Colors.white : pinkColor,
              //                 ),
              //               ),
              //               Text(
              //                 "Week",
              //                 style: TextStyle(
              //                   fontSize: 14.sp,
              //                   fontFamily: 'Avenir',
              //                   color: index <= 16 ? Colors.white : pinkColor,
              //                 ),
              //               ),
              //             ],
              //           ));
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Future _scrollToIndex() async {
    await controller.scrollToIndex(6, preferPosition: AutoScrollPosition.begin);
  }

  List<String> imagesList = [
    "assets/images/p1.png",
    "assets/images/p2.png",
    "assets/images/p3.png",
    "assets/images/p1.png",
    "assets/images/p2.png",
    "assets/images/p3.png"
  ];
}
