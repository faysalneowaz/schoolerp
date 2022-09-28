// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:schoolerp/constant.dart';
import 'package:schoolerp/screens/profile/bodycontent/top_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppConstent.primarycolor,
        elevation: 0.0,
        actions: [
          Container(
            height: 5,
            width: 80,
            margin: const EdgeInsets.only(right: 15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.check,
                  color: AppConstent.primarycolor,
                  size: 16,
                ),
                Text(
                  "Done",
                  style:
                      TextStyle(color: AppConstent.primarycolor, fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: AppConstent.primarycolor,
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 20.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const TopProfile(),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: TextFieldCustom(
                          labeltext: "Birth Certificate No",
                          hinttext: "1234 4325 4567 1234",
                          isLocked: false,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: TextFieldCustom(
                          labeltext: "Academic Year",
                          hinttext: "2021-2022",
                          isLocked: false,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: TextFieldCustom(
                          labeltext: "Admission Class",
                          hinttext: "VI",
                          isLocked: true,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: TextFieldCustom(
                          labeltext: "Old Admission No",
                          hinttext: "T0022",
                          isLocked: true,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: TextFieldCustom(
                          labeltext: "Date of Admission",
                          hinttext: "101 Apr 2018",
                          isLocked: true,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: TextFieldCustom(
                          labeltext: "Date of Birth",
                          hinttext: "22 July 1996",
                          isLocked: true,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        child: TextFieldCustom(
                          labeltext: "Parent Mail ID",
                          hinttext: "parentboth@gmail.com",
                          isLocked: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldCustom extends StatelessWidget {
  String? labeltext;
  String? hinttext;
  bool isLocked;
  TextFieldCustom({
    Key? key,
    required this.labeltext,
    required this.hinttext,
    required this.isLocked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppConstent.lightgraycolor,
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: hinttext,
        suffixIcon: isLocked
            ? const Icon(
                Icons.lock_outlined,
                color: AppConstent.lightgraycolor,
              )
            : null,
        suffixIconColor: AppConstent.lightgraycolor,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle: const TextStyle(
          color: AppConstent.lightgraycolor,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppConstent.lightgraycolor,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppConstent.lightgraycolor,
          ),
        ),
      ),
    );
  }
}
