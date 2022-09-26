import 'package:flutter/material.dart';
import 'package:schoolerp/constant.dart';
import 'package:schoolerp/screens/profile/profile_screen.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Hi ',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: 'Faysal',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Class XI-B  |  Roll no: 04",
                style: TextStyle(
                  color: Colors.white60,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3.0),
                margin: const EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0)),
                child: const Text(
                  "2021-2022",
                  style: TextStyle(color: AppConstent.primarycolor),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => ProfileScreen()));
            },
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: AppConstent.lightgraycolor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(40.0),
                ),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
