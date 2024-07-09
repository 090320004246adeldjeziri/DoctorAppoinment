import 'package:doctor_apoinement/components/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../utils/config.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  CalendarFormat _format = CalendarFormat.month;
  DateTime _focusDay = DateTime.now();
  DateTime _currentDay = DateTime.now();
  int? _currentIndex;
  bool _isWeekend = false;
  bool _dateSelected = false;
  bool _timeSelected = false;
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      appBar: const  CustomAppBar(
        appTitle: "Appointement",
        icon: Icon(Icons.arrow_back_ios),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                _tableCalendar(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  child: Center(
                      child: Text(
                    "Select Consultaion Time ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
                )
              ],
            ),
          ),
          _isWeekend
              ? SliverToBoxAdapter(
                  child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 30),
                      child: const Text(
                        "Weekend is not available, Please Select Another Day",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )),
                )
              : SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          _currentIndex = index;
                          _timeSelected = true ;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: _currentIndex == index
                                    ? Colors.white
                                    : Colors.black),
                            borderRadius: BorderRadius.circular(15),
                            color: _currentIndex == index
                                ? Config.primaryColor
                                : null),
                        alignment: Alignment.center,
                        child: Text(
                          '${index + 9}:00${index + 9 > 11 ? "PM" : "AM"}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:
                                  _currentIndex == index ? Colors.white : null),
                        ),
                      ),
                    );
                  },
                  childCount: 8),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,childAspectRatio: 1.5))
        ],
      ),
    );
  }

  Widget _tableCalendar() {
    return TableCalendar(
        focusedDay: _focusDay,
        firstDay: DateTime.now(),
        lastDay: DateTime(2024, 12, 31),
        calendarFormat: _format,
        currentDay: _currentDay,
        rowHeight: 48,
        calendarStyle: CalendarStyle(
            todayDecoration: BoxDecoration(
                color: Config.primaryColor, shape: BoxShape.circle)),
        availableCalendarFormats: const {
          CalendarFormat.month: 'Month',
        },
        onFormatChanged: (format) {
          setState(() {
            _format = format;
          });
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _currentDay = selectedDay;
            _focusDay = focusedDay;
            _dateSelected = true;
            if (selectedDay.weekday == 6 || selectedDay.weekday == 7) {
              _isWeekend = true;
              _timeSelected = false;
              _currentIndex = null;
            } else {
              _isWeekend = false;
            }
          });
        });
  }
}
