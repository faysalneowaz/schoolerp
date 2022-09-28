import 'package:flutter/material.dart';
import 'package:schoolerp/constant.dart';

class TopProfile extends StatelessWidget {
  const TopProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppConstent.primarycolor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            // margin: const EdgeInsets.only(right: 8.0),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: AppConstent.lightgraycolor,
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Faysal Neowaz",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "Class XI-B  |  Roll no: 04",
                style: TextStyle(
                  color: AppConstent.lightgraycolor,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
