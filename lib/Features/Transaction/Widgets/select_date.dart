import 'package:flutter/material.dart';
import 'package:med_pay/Features/Transaction/Widgets/filter_by_categories.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDate extends StatefulWidget {
  const SelectDate({Key? key}) : super(key: key);

  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focussedDay){
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
          child: TableCalendar(
            headerStyle: HeaderStyle(formatButtonVisible:false, titleCentered: true),
        availableGestures: AvailableGestures.all,
        selectedDayPredicate: (day) => isSameDay(day, today),
        focusedDay: DateTime.now(),
        firstDay: DateTime.utc(2024, 03, 01),
        lastDay: DateTime.utc(2024, 03, 31),
            onDaySelected: _onDaySelected,
        ),
    );
  }
}
