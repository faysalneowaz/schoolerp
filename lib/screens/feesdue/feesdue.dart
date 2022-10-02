import 'package:flutter/material.dart';

class FeesDue extends StatefulWidget {
  const FeesDue({Key? key}) : super(key: key);

  @override
  State<FeesDue> createState() => _FeesDueState();
}

class _FeesDueState extends State<FeesDue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fees Due"),
      ),
    );
  }
}
