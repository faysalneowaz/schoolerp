import 'package:flutter/material.dart';
import 'package:schoolerp/constant.dart';

class AppAction {
  final Color color;
  final String label;
  final Color labelColor;
  final String iconData;
  final Color iconColor;
  final void Function(BuildContext)? callback;

  AppAction({
    this.color = Colors.blueGrey,
    required this.label,
    this.labelColor = Colors.white,
    required this.iconData,
    this.iconColor = Colors.white,
    this.callback,
  });
}

final List<AppAction> actions = [
  AppAction(
    color: AppConstent.menubackcolor,
    label: 'Play Quiz',
    iconData: "assets/icon/ic_quiz.png",
    labelColor: Colors.black,
    callback: (context) {
      print("");
    },
  ),
  AppAction(
    color: AppConstent.menubackcolor,
    label: 'Assignment',
    iconData: "assets/icon/ic_assignment.png",
    labelColor: Colors.black,
    callback: (context) {
      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (_) => MailScreen()));
      print("");
    },
  ),
  AppAction(
    color: AppConstent.menubackcolor,
    label: 'School Holiday',
    labelColor: Colors.black,
    iconData: "assets/icon/ic_holiday.png",
    callback: (context) {
      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (_) => UrgentScreen()));
      print("");
    },
  ),
  AppAction(
    color: AppConstent.menubackcolor,
    label: 'Time Table',
    labelColor: Colors.black,
    iconData: "assets/icon/ic_calendra.png",
    callback: (context) {
      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (_) => NewsScreen()));
      print("");
    },
  ),
  AppAction(
    color: AppConstent.menubackcolor,
    label: 'Result',
    labelColor: Colors.black,
    iconData: "assets/icon/ic_results.png",
    callback: (context) {
      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (_) => NewsScreen()));
      print("");
    },
  ),
  AppAction(
    color: AppConstent.menubackcolor,
    label: 'Date Sheet',
    labelColor: Colors.black,
    iconData: "assets/icon/ic_date_sheet.png",
    callback: (context) {
      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (_) => NewsScreen()));
      print("");
    },
  ),
  AppAction(
    color: AppConstent.menubackcolor,
    label: 'Ask Doubts',
    labelColor: Colors.black,
    iconData: "assets/icon/ic_doubts.png",
    callback: (context) {
      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (_) => NewsScreen()));
      print("");
    },
  ),
  AppAction(
    color: AppConstent.menubackcolor,
    label: 'School Gallery',
    labelColor: Colors.black,
    iconData: "assets/icon/ic_gallery.png",
    callback: (context) {
      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (_) => NewsScreen()));
      print("");
    },
  ),
  AppAction(
    color: AppConstent.menubackcolor,
    label: 'Leave Application',
    labelColor: Colors.black,
    iconData: "assets/icon/ic_leave.png",
    callback: (context) {
      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (_) => NewsScreen()));
      print("");
    },
  ),
  AppAction(
    color: AppConstent.menubackcolor,
    label: 'Change Password',
    labelColor: Colors.black,
    iconData: "assets/icon/ic_password.png",
    callback: (context) {
      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (_) => NewsScreen()));
      print("");
    },
  ),
  AppAction(
    color: AppConstent.menubackcolor,
    label: 'Events',
    labelColor: Colors.black,
    iconData: "assets/icon/ic_event.png",
    callback: (context) {
      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (_) => NewsScreen()));
      print("");
    },
  ),
  AppAction(
    color: AppConstent.menubackcolor,
    label: 'Logout',
    labelColor: Colors.black,
    iconData: "assets/icon/ic_logout.png",
    callback: (context) {
      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (_) => NewsScreen()));
      print("");
    },
  ),
];
