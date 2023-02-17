import 'dart:ui';

import 'package:demo2/DiaryPage/diary.dart';
import 'package:demo2/HomePage/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

import '../NavBar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  Map<DateTime, List<Event>> selectedEvents = {};
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  TextEditingController _eventController = TextEditingController();
  TextEditingController _desController = TextEditingController();

  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  void dispose() {
    _eventController.dispose();
    _desController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: (() {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            }),
            icon: Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/space_bg.jpg"),
                    fit: BoxFit.fitHeight)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 78),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color.fromARGB(255, 245, 243, 222)
                                  .withOpacity(0.9),
                              Color.fromARGB(255, 246, 215, 176)
                                  .withOpacity(0.9)
                            ])),
                    child: TableCalendar(
                      focusedDay: selectedDay,
                      firstDay: DateTime(1990),
                      lastDay: DateTime(2050),
                      calendarFormat: format,
                      onFormatChanged: (CalendarFormat _format) {
                        setState(() {
                          format = _format;
                        });
                      },
                      startingDayOfWeek: StartingDayOfWeek.sunday,
                      daysOfWeekVisible: true,

                      //Day Changed
                      onDaySelected: (DateTime selectDay, DateTime focusDay) {
                        setState(() {
                          selectedDay = selectDay;
                          focusedDay = focusDay;
                        });
                        print(focusedDay);
                      },
                      selectedDayPredicate: (DateTime date) {
                        return isSameDay(selectedDay, date);
                      },

                      eventLoader: _getEventsfromDay,

                      //To style the Calendar
                      calendarStyle: CalendarStyle(
                        isTodayHighlighted: true,
                        selectedDecoration: BoxDecoration(
                          color: Color.fromARGB(255, 136, 109, 53),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        selectedTextStyle: TextStyle(color: Colors.white),
                        todayDecoration: BoxDecoration(
                          color: Color.fromARGB(210, 156, 156, 128),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        defaultDecoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        weekendDecoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      headerStyle: HeaderStyle(
                        formatButtonVisible: true,
                        titleCentered: true,
                        formatButtonShowsNext: false,
                        formatButtonDecoration: BoxDecoration(
                          color: Color.fromARGB(255, 126, 114, 7),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        formatButtonTextStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ..._getEventsfromDay(selectedDay).map(
                    (Event event) => SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(
                            top: 5, bottom: 10, left: 20, right: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.green.shade200),
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  event.title,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 19),
                                ),
                              ),
                              Text(DateFormat("HH:mm:ss")
                                  .format(DateTime.now())),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Write your story"),
            content: Container(
              //decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(5),
              //border: Border.all(color: Colors.black)),
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: _eventController,
              ),
            ),
            actions: [
              TextButton(
                child: Text("Cancel"),
                onPressed: () => Navigator.pop(context),
              ),
              TextButton(
                child: Text("Add"),
                onPressed: () {
                  if (_eventController.text.isEmpty) {
                  } else {
                    if (selectedEvents[selectedDay] != null) {
                      selectedEvents[selectedDay]!.add(
                        Event(title: _eventController.text),
                      );
                    } else {
                      selectedEvents[selectedDay] = [
                        Event(title: _eventController.text)
                      ];
                    }
                  }
                  Navigator.pop(context);
                  _eventController.clear();
                  setState(() {});
                  return;
                },
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 112, 203, 249).withOpacity(0.8),
        label: Text(
          "Add Diary",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        icon: Icon(
          Icons.add,
          size: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}
