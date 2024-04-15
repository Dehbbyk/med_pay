import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDate extends StatefulWidget {
  const SelectDate({Key? key}) : super(key: key);

  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TableCalendar<DateTime>(
        firstDay: DateTime.utc(2024, 3, 1),
        lastDay: DateTime.utc(2024, 3, 31),
        focusedDay: DateTime.now(),
        calendarFormat: CalendarFormat.month,
        onFormatChanged: (format) {},
        onPageChanged: (focusedDay) {},
        // selectedDayPredicate: (day) {},
      )
      ,
    );
  }
}
