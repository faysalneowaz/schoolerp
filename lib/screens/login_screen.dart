import 'package:flutter/material.dart';
import 'package:schoolerp/constant.dart';
import 'package:schoolerp/screens/dashboard/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;
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
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        TextFormField(
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
                        TextFormField(
                          validator: (value) {
                            if (value!.trim().isEmpty) {
                              return "Password is required";
                            } else if (value.length < 6) {
                              return "Password is more then 6 charecter";
                            }
                            return null;
                          },
                          controller: passwordController,
                          cursorColor: AppConstent.lightgraycolor,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppConstent.lightgraycolor,
                              ),
                            ),
                            labelText: "Password",
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
                            border: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppConstent.lightgraycolor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DashboardScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(0.0),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                          ),
                          child: Ink(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              gradient: LinearGradient(colors: [
                                AppConstent.secondarycolor,
                                AppConstent.primarycolor
                              ]),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              constraints: const BoxConstraints(minWidth: 88.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          18),
                                  const Text(
                                    'SIGN IN',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Align(
                            alignment: Alignment.centerRight,
                            child: Text("Forget Password?"),
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
