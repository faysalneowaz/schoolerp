// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:schoolerp/constant.dart';
import 'package:schoolerp/model/dashboard_menuacction.dart';
import 'package:schoolerp/screens/dashboard/bodycontent/menu_button.dart';
import 'package:schoolerp/screens/dashboard/bodycontent/middle_body.dart';
import 'package:schoolerp/screens/dashboard/bodycontent/top_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: AppConstent.primarycolor,
        ),
        child: SafeArea(
          child: Stack(
            children: [
              const TopWidget(),
              Container(
                height: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.only(top: 200),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 10, right: 10, bottom: 10, top: 60),
                  padding: const EdgeInsets.all(30.0),
                  child: GridView.extent(
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0,
                    children: actions
                        .map((action) => ActionButton(action: action))
                        .toList(),
                  ),
                ),
              ),
              const Middle_body(),
            ],
          ),
        ),
      ),
    );
  }
}
