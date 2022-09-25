import 'package:flutter/material.dart';
import 'package:schoolerp/constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppConstent.secondarycolor, AppConstent.primarycolor],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //top Image
              SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/image/topimage.png"),
              ),

              //text to display
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                ),
                child: RichText(
                  text: const TextSpan(
                      text: 'Hi ',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: 'Student',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ]),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                ),
                child: const Text(
                  "Sign in to continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 25,
                      right: 25,
                      top: 35,
                    ),
                    child: Column(
                      children: [
                        TextField(
                          controller: emailController,
                          cursorColor: AppConstent.lightgraycolor,
                          decoration: const InputDecoration(
                            labelText: "Mobile Number/Email",
                            labelStyle: TextStyle(
                              color: AppConstent.lightgraycolor,
                            ),
                            focusColor: AppConstent.lightgraycolor,
                            fillColor: AppConstent.lightgraycolor,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstent.lightgraycolor,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstent.lightgraycolor,
                              ),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstent.lightgraycolor,
                              ),
                            ),
                          ),
                        ),
                        TextField(
                          controller: emailController,
                          cursorColor: AppConstent.lightgraycolor,
                          decoration: const InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: AppConstent.lightgraycolor,
                            ),
                            focusColor: AppConstent.lightgraycolor,
                            fillColor: AppConstent.lightgraycolor,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstent.lightgraycolor,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstent.lightgraycolor,
                              ),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstent.lightgraycolor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
