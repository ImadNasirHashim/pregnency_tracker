import 'package:flutter/material.dart';
import 'package:pregnany_tracker/core/constants/style.dart';
import 'package:pregnany_tracker/ui/custom_widgets/custom_appbar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_widgets/statuses_widget.dart';

class CalenderScreen extends StatefulWidget {
  /// Creates the home page to display teh calendar widget.
  const CalenderScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CalenderScreenState createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar("Calender"),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15.w, right: 15.w),
          child: Column(
            children: [
              SfCalendar(
                view: CalendarView.month,
                cellBorderColor: Colors.transparent,
                dataSource: MeetingDataSource(
                  _getDataSource(),
                ),
                monthViewSettings: const MonthViewSettings(
                  appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
                ),
                blackoutDatesTextStyle: TextStyle(color: Colors.red),
              ),
              SizedBox(height: 15.h,),
              StatusWidget(),
              SizedBox(height: 15.h,),
              StatusWidget(),
              SizedBox(height: 15.h,),
              StatusWidget(),

              SizedBox(height: 15.h,),
              StatusWidget()
            ],
          ),
        ),
      ),
    );
  }

  List<DateTime> myDateTimeList = [
    DateTime(2022, 4, 27, 9, 0, 0),
    DateTime(2022, 4, 28, 9, 0, 0),
    DateTime(2022, 4, 29, 9, 0, 0),
    DateTime(2022, 4, 22, 9, 0, 0),
  ];

  List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);

    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(Meeting('Conference', startTime, endTime, Colors.red, false));

    meetings.add(Meeting("urgent", DateTime(2022, 5, today.day, 9, 0, 0),
        endTime, const Color(0xFF0F8644), false));

    return meetings;
  }
}

/// An object to set the appointment collection data source to calendar, which
/// used to map the custom appointment data to the calendar appointment, and
/// allows to add, remove or reset the appointment collection.
class MeetingDataSource extends CalendarDataSource {
  /// Creates a meeting data source, which used to set the appointment
  /// collection to the calendar
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return _getMeetingData(index).from;
  }

  @override
  DateTime getEndTime(int index) {
    return _getMeetingData(index).to;
  }

  @override
  String getSubject(int index) {
    return _getMeetingData(index).eventName;
  }

  @override
  Color getColor(int index) {
    return _getMeetingData(index).background;
  }

  @override
  bool isAllDay(int index) {
    return _getMeetingData(index).isAllDay;
  }

  Meeting _getMeetingData(int index) {
    final dynamic meeting = appointments![index];
    late final Meeting meetingData;
    if (meeting is Meeting) {
      meetingData = meeting;
    }

    return meetingData;
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the event data which will be rendered in calendar.
class Meeting {
  /// Creates a meeting class with required details.
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  /// Event name which is equivalent to subject property of [Appointment].
  String eventName;

  /// From which is equivalent to start time property of [Appointment].
  DateTime from;

  /// To which is equivalent to end time property of [Appointment].
  DateTime to;

  /// Background which is equivalent to color property of [Appointment].
  Color background;

  /// IsAllDay which is equivalent to isAllDay property of [Appointment].
  bool isAllDay;
}
