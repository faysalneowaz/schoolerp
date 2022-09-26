import 'package:flutter/material.dart';
import 'package:schoolerp/constant.dart';
import 'package:schoolerp/screens/dashboard/bodycontent/card.dart';

class Middle_body extends StatelessWidget {
  const Middle_body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 120,
      left: 50,
      child: Row(
        children: [
          Carddasham(
            imgurl: "assets/icon/studentprofile.png",
            color: AppConstent.lightambercolor,
            moneytext: "80.39 %",
            text: "Attendance",
          ),
          const SizedBox(
            width: 30.0,
          ),
          Carddasham(
            imgurl: "assets/icon/money.png",
            color: AppConstent.lightpurpelcolor,
            moneytext: "₹6400",
            text: "Fees Due",
          ),
        ],
      ),
    );
  }
}
