import 'package:flutter/material.dart';
import 'package:schoolerp/constant.dart';

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
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(),
          ),
        ),
      ),
    );
  }
}
