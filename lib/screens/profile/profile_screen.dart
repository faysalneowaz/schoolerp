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
      ),
      body: Container(
        color: AppConstent.primarycolor,
      ),
    );
  }
}
