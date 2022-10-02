import 'package:flutter/material.dart';
import 'package:schoolerp/model/datasourcemodel.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class SourceData extends CalendarDataSource {
  SourceData(List<Datamodel> source) {
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

  Datamodel _getMeetingData(int index) {
    final dynamic meeting = appointments![index];
    late final Datamodel meetingData;
    if (meeting is Datamodel) {
      meetingData = meeting;
    }

    return meetingData;
  }
}
