import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      view: CalendarView.week,
      firstDayOfWeek: 1,
      dataSource: MeetingDataSource(getAppointments()),
      showNavigationArrow: true,
    );
  }
}

List<Appointment> getAppointments() {
  // List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  List<Appointment> meetings = <Appointment>[
    // Appointment(
    //   startTime: startTime,
    //   endTime: endTime,
    //   subject: 'Terminale A1 (2h)',
    //   location: 'Salle 206',
    //   notes: "Séance 2/16",
    // ),
    Appointment(
        startTime: DateTime(2023, 4, 26, 10, 0, 0),
        endTime: DateTime(2023, 4, 26, 10, 0, 0).add(const Duration(hours: 2)),
        subject: 'Devoir surveillé (2h30)',
        location: 'Salle 206',
        color: Colors.red),
    Appointment(
      startTime: DateTime(2023, 4, 27, 14, 0, 0),
      endTime: DateTime(2023, 4, 27, 14, 0, 0).add(const Duration(hours: 2)),
      subject: 'Renforcement - Seconde C2 (3h)',
      location: 'Salle 206',
    ),
    Appointment(
      startTime: DateTime(2023, 4, 28, 10, 0, 0),
      endTime: DateTime(2023, 4, 28, 10, 0, 0).add(const Duration(hours: 2)),
      subject: 'Première D2 (2h)',
      location: 'Salle 206',
    ),
    Appointment(
      startTime: DateTime(2023, 4, 28, 14, 0, 0),
      endTime: DateTime(2023, 4, 28, 14, 0, 0).add(const Duration(hours: 2)),
      subject: 'Terminale D1 (2h)',
      location: 'Salle 206',
    ),
  ];

  // meetings.add(Appointment(
  //     startTime: startTime,
  //     endTime: endTime,
  //     subject: 'Conférence',
  //     color: Colors.blue));
  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
