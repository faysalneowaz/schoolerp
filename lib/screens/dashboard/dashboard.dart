import 'package:flutter/material.dart';
import 'package:schoolerp/constant.dart';

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
        decoration: const BoxDecoration(
          color: AppConstent.primarycolor,
        ),

        child: SafeArea(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                              ]),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text("Class XI-B  |  Roll no: 04",style: TextStyle(color: Colors.white60,),),
                        Container(
                          padding: const EdgeInsets.all(3.0),
                          margin: EdgeInsets.only(top: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0)
                          ),
                          child: const Text("2021-2022",style: TextStyle(color: AppConstent.primarycolor),),
                        ),
                      ],
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: AppConstent.lightgraycolor
                      ),
                    ),
                  ],
                ),
              ),
                
            ],
          ),
        ),
      ),
    );
  }
}
