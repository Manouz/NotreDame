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
    Appointment(
        startTime: DateTime(2023, 4, 24, 8, 0, 0),
        endTime: DateTime(2023, 4, 24, 8, 0, 0).add(const Duration(hours: 1)),
        subject: 'Hitoire-Géographie',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.black),
    Appointment(
        startTime: DateTime(2023, 4, 24, 9, 0, 0),
        endTime: DateTime(2023, 4, 24, 9, 0, 0).add(const Duration(hours: 2)),
        subject: 'Mathematique',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.red),
    Appointment(
        startTime: DateTime(2023, 4, 24, 11, 0, 0),
        endTime: DateTime(2023, 4, 24, 11, 0, 0).add(const Duration(hours: 1)),
        subject: 'Philosophie',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.blue),
    Appointment(
        startTime: DateTime(2023, 4, 24, 13, 0, 0),
        endTime: DateTime(2023, 4, 24, 13, 0, 0).add(const Duration(hours: 2)),
        subject: 'Physique-Chime',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.grey),
    Appointment(
        startTime: DateTime(2023, 4, 24, 15, 0, 0),
        endTime: DateTime(2023, 4, 24, 15, 0, 0).add(const Duration(hours: 2)),
        subject: 'SVT',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.pink),
    Appointment(
        startTime: DateTime(2023, 4, 25, 8, 0, 0),
        endTime: DateTime(2023, 4, 25, 8, 0, 0).add(const Duration(hours: 1)),
        subject: 'ANGLAIS',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.green),
    Appointment(
        startTime: DateTime(2023, 4, 25, 9, 0, 0),
        endTime: DateTime(2023, 4, 25, 9, 0, 0).add(const Duration(hours: 2)),
        subject: 'Mathematique',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.grey),
    Appointment(
        startTime: DateTime(2023, 4, 25, 11, 0, 0),
        endTime: DateTime(2023, 4, 25, 11, 0, 0).add(const Duration(hours: 1)),
        subject: 'HISTOIRE-GEO',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.red),
    Appointment(
        startTime: DateTime(2023, 4, 25, 13, 0, 0),
        endTime: DateTime(2023, 4, 25, 13, 0, 0).add(const Duration(hours: 2)),
        subject: 'Physique-Chime',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.pink),
    Appointment(
        startTime: DateTime(2023, 4, 25, 15, 0, 0),
        endTime: DateTime(2023, 4, 25, 15, 0, 0).add(const Duration(hours: 2)),
        subject: 'SVT',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.black),
    Appointment(
        startTime: DateTime(2023, 4, 26, 8, 0, 0),
        endTime: DateTime(2023, 4, 26, 8, 0, 0).add(const Duration(hours: 2)),
        subject: 'SVT',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.black),
    Appointment(
        startTime: DateTime(2023, 4, 26, 10, 0, 0),
        endTime: DateTime(2023, 4, 26, 10, 0, 0).add(const Duration(hours: 2)),
        subject: 'Francais',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.green),
    Appointment(
        startTime: DateTime(2023, 4, 27, 8, 0, 0),
        endTime: DateTime(2023, 4, 27, 8, 0, 0).add(const Duration(hours: 1)),
        subject: 'Philosophie',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.blue),
    Appointment(
        startTime: DateTime(2023, 4, 27, 9, 0, 0),
        endTime: DateTime(2023, 4, 27, 9, 0, 0).add(const Duration(hours: 1)),
        subject: 'Francais',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.grey),
    Appointment(
        startTime: DateTime(2023, 4, 27, 10, 0, 0),
        endTime: DateTime(2023, 4, 27, 10, 0, 0).add(const Duration(hours: 2)),
        subject: 'Physique-Chimie',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.pink),
    Appointment(
        startTime: DateTime(2023, 4, 27, 13, 0, 0),
        endTime: DateTime(2023, 4, 27, 13, 0, 0).add(const Duration(hours: 2)),
        subject: 'Mathematique',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.purple),
    Appointment(
        startTime: DateTime(2023, 4, 27, 15, 0, 0),
        endTime: DateTime(2023, 4, 27, 15, 0, 0).add(const Duration(hours: 2)),
        subject: 'Physique-Chimie',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.blueGrey),
    Appointment(
        startTime: DateTime(2023, 4, 28, 8, 0, 0),
        endTime: DateTime(2023, 4, 28, 8, 0, 0).add(const Duration(hours: 4)),
        subject: 'SVT',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.green),
    Appointment(
        startTime: DateTime(2023, 4, 28, 13, 0, 0),
        endTime: DateTime(2023, 4, 28, 13, 0, 0).add(const Duration(hours: 2)),
        subject: 'Physique-Chimie',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.blueGrey),
    Appointment(
        startTime: DateTime(2023, 4, 28, 15, 0, 0),
        endTime: DateTime(2023, 4, 28, 15, 0, 0).add(const Duration(hours: 1)),
        subject: 'philosophie',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.pink),
    Appointment(
        startTime: DateTime(2023, 4, 28, 16, 0, 0),
        endTime: DateTime(2023, 4, 28, 16, 0, 0).add(const Duration(hours: 1)),
        subject: 'Educations physiques et Sportives',
        location: 'Salle 206',
        notes: "Séance 2/16",
        color: Colors.deepPurple),
  ];

  
  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
