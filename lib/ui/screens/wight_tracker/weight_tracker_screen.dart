



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pregnany_tracker/core/constants/colors.dart';
import 'package:pregnany_tracker/core/constants/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pregnany_tracker/ui/custom_widgets/custom_appbar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class WeightTrackerScreen extends StatelessWidget {


  List<_SalesData> data = [
    _SalesData('Week 1', 70),
    _SalesData('Week 2', 82),
    _SalesData('Week 3', 72),
    _SalesData('Week 4', 84),
    _SalesData('Week 5', 73)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar("Weight Tracker"),
      body: Container(
        margin:EdgeInsets.only(left: 15.w,right: 15.w),
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 10.h,),



              Container(

                decoration: BoxDecoration(
                    color: Color(0xffE0EFF1),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  children: [
                    Container(
                      margin:EdgeInsets.only(left: 5.w,right: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("64,0 KG",style: normalTextStyleBlackColor,),

                          Container(

                              padding: EdgeInsets.all(5.w),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                              ),
                              child: Icon(Icons.arrow_forward_ios_sharp,
                                color: pinkColor,
                                size: 15.w,
                              )
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 5.h,),

                    SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        // Chart title

                        // Enable legend
                        // legend: Legend(isVisible: true),
                        // Enable tooltip
                        // tooltipBehavior: TooltipBehavior(enable: true),
                        series: <ChartSeries<_SalesData, String>>[
                          LineSeries<_SalesData, String>(
                              dataSource: data,
                              xValueMapper: (_SalesData sales, _) => sales.year,
                              yValueMapper: (_SalesData sales, _) => sales.sales,
                              // name: 'Sales',
                              // Enable data label
                              dataLabelSettings: DataLabelSettings(isVisible: true))
                        ]),
                  ],
                ),
              ),

              SizedBox(height: 15.h,),


              Align(
                alignment: Alignment.centerLeft,
                  child: Text("Overall Status",style:hintTextStyl,),
              ),
              SizedBox(height: 10.h,),

              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xffE0EFF1),
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/weighttracker.png",
                      scale: 4,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
                                Text("Starting Weight ",style: normalTextStyleBlackColor,),
                                Text("75 kg",style: normalTextStyleBlackColor,)
                              ],
                            ),
                            SizedBox(height: 15.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
                                Text("Today Weight ",style: normalTextStyleBlackColor,),
                                Text("82.7 kg",style: normalTextStyleBlackColor,)
                              ],
                            ),
                            SizedBox(height: 15.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
                                Text("Weight Gain ",style: normalTextStyleBlackColor,),
                                Text("7.7 kg",style: normalTextStyleBlackColor,)
                              ],
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 15.h,),
              
              Container(
                height: 45.h,
                decoration: BoxDecoration(
                    color: pinkColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 20.w,),
                      Align(
                        alignment: Alignment.center,
                          child: Text("Add Weight",style: normalTextStyleWhiteColor,),
                      ),


                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
