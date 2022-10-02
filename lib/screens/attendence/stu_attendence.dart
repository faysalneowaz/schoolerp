import 'package:flutter/material.dart';
import 'package:schoolerp/model/absentandholiday.dart';
import 'package:schoolerp/model/datasourcemodel.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class StuAttendence extends StatefulWidget {
  const StuAttendence({Key? key}) : super(key: key);

  @override
  State<StuAttendence> createState() => _StuAttendenceState();
}

class _StuAttendenceState extends State<StuAttendence> {
  @override
  Widget build(BuildContext context) {
    List<Datamodel> _getDataSource() {
      final List<Datamodel> attadenceData = <Datamodel>[];
      final DateTime today = DateTime.now();
      final DateTime startTime =
          DateTime(today.year, today.month, today.day, 9);
      final DateTime endTime = startTime.add(const Duration(hours: 2));
      attadenceData.add(Datamodel('Festival  & Holidays', startTime, endTime,
          const Color(0xFF0F8644), false));
      return attadenceData;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Attendence"),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            child: SfCalendar(
              view: CalendarView.month,
              dataSource: SourceData(_getDataSource()),
              cellBorderColor: Colors.transparent,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
              itemCount: _getDataSource().toList().length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_getDataSource().elementAt(index).eventName),
                );
              })
        ],
      ),
    );
  }
}
